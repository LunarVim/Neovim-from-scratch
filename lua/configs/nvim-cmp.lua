local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
	print("nvim-cmp plugin cant be load")
	return
end

local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
	print("luasnip cant be load")
	return
end
local lspkind_ok, lspkind = pcall(require, "lspkind")
if not lspkind_ok then
	print("lspkind cant be load")
	return
end

require("luasnip/loaders/from_vscode").lazy_load()

local check_backspace = function()
	local col = vim.fn.col(".") - 1
	return col == 0 or vim.fn.getline("."):sub(col, col):match("%s")
end

local function border(hl_name)
	return {
		{ "╭", hl_name },
		{ "─", hl_name },
		{ "╮", hl_name },
		{ "│", hl_name },
		{ "╯", hl_name },
		{ "─", hl_name },
		{ "╰", hl_name },
		{ "│", hl_name },
	}
end

-- format stuff
local nvchad_status_ok, nvchad_icons = pcall(require, "nvchad_ui.icons")
local default_kind_icons = {
	Text = "",
	Method = "m",
	Function = "",
	Constructor = "",
	Field = "",
	Variable = "",
	Class = "",
	Interface = "",
	Module = "",
	Property = "",
	Unit = "",
	Value = "",
	Enum = "",
	Keyword = "",
	Snippet = "",
	Color = "",
	File = "",
	Reference = "",
	Folder = "",
	EnumMember = "",
	Constant = "",
	Struct = "",
	Event = "",
	Operator = "",
	TypeParameter = "",
}
-- find more here: https://www.nerdfonts.com/cheat-sheet
local kind_icons = nvchad_status_ok and nvchad_icons.lspkind or default_kind_icons

local formatting = {
	fields = { "kind", "abbr", "menu" },
	format = function(entry, item)
		local kind = lspkind.cmp_format({
			mode = "symbol_text",
			maxwidth = 50,
		})(entry, item)
		local strings = vim.split(kind.kind, "%s", { trimempty = true })
		kind.kind = " " .. strings[1] .. " "
		kind.menu = "    (" .. strings[2] .. ")"

		return kind
		--[[ item.kind = string.format(' %s %s', kind_icons[item.kind],item.kind) -- This concatonates the icons with the name of the item kind ]]
		--[[ item.menu =({ ]]
		--[[     nvim_lsp = "[LSP]", ]]
		--[[     nvim_lua = "[NVIM_LUA]", ]]
		--[[     luasnip = "[Snippet]", ]]
		--[[     buffer = "[Buffer]", ]]
		--[[     path = "[Path]", ]]
		--[[   })[entry.source.name] ]]
		--[[ return item ]]
	end,
}

--[[ local formatting = { ]]
--[[   fields = { "abbr", "kind", "menu"}, ]]
--[[   format = function(entry, item) ]]
--[[     -- Kind icons ]]
--[[     --item.kind = string.format("%s", kind_icons[item.kind]) ]]
--[[     item.kind = string.format(' %s %s', kind_icons[item.kind],item.kind) -- This concatonates the icons with the name of the item kind ]]
--[[     item.menu =({ ]]
--[[         nvim_lsp = "[LSP]", ]]
--[[         nvim_lua = "[NVIM_LUA]", ]]
--[[         luasnip = "[Snippet]", ]]
--[[         buffer = "[Buffer]", ]]
--[[         path = "[Path]", ]]
--[[       })[entry.source.name] ]]
--[[     return item ]]
--[[   end, ]]
--[[ } ]]
cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body) -- For `luasnip` users.
		end,
	},
	mapping = {
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
		["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
		["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
		["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
		["<C-e>"] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		-- Accept currently selected item. If none selected, `select` first item.
		-- Set `select` to `false` to only confirm explicitly selected items.
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expandable() then
				luasnip.expand()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif check_backspace() then
				fallback()
			else
				fallback()
			end
		end, {
			"i",
			"s",
		}),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, {
			"i",
			"s",
		}),
	},
	formatting = formatting,
	sources = {
		{ name = "nvim_lsp" },
		{ name = "nvim_lua" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
	},
	confirm_opts = {
		behavior = cmp.ConfirmBehavior.Replace,
		select = false,
	},
	window = {
		completion = cmp.config.window.bordered({
			border = border(),
			scrollbar = false,
			side_padding = 1,
		}),
		documentation = {
			border = border(""),
		},
	},
	experimental = {
		ghost_text = false,
		native_menu = false,
	},
})
