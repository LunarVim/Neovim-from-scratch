local status, null_ls = pcall(require, "null-ls")
if not status then
	vim.notify("没有找到 null-ls")
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

null_ls.setup({
	debug = false,
	sources = {
		-- Formatting ---------------------
		--  brew install shfmt
		--formatting.shfmt,
		-- StyLua
		formatting.stylua,
		-- frontend
		formatting.prettier.with({ -- 比默认少了 markdown
			filetypes = {
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"vue",
				"css",
				"scss",
				"less",
				"html",
				"json",
				"yaml",
				"graphql",
				"cmake",
				"cpp",
			},
			prefer_local = "node_modules/.bin",
		}),
		-- rustfmt
		-- rustup component add rustfmt
		--formatting.rustfmt,
		formatting.clang_format,
		-- Python
		-- pip install black
		-- asdf reshim python
		formatting.black.with({ extra_args = { "--fast" } }),
		-----------------------------------------------------
		-- Ruby
		-- gem install rubocop
		-- formatting.rubocop,
		-----------------------------------------------------
		-- formatting.fixjson,
		-- Diagnostics  ---------------------
		diagnostics.eslint.with({ prefer_local = "node_modules/.bin" }),
		-- cpp
		--diagnostics.clang_check,
		diagnostics.cppcheck,
		-- diagnostics.markdownlint,
		-- markdownlint-cli2
		-- diagnostics.markdownlint.with({
		--   prefer_local = "node_modules/.bin",
		--   command = "markdownlint-cli2",
		--   args = { "$FILENAME", "#node_modules" },
		-- }),
		--
		-- code actions ---------------------
		code_actions.gitsigns,
		code_actions.eslint.with({
			prefer_local = "node_modules/.bin",
		}),
	},
	-- #{m}: message
	-- #{s}: source name (defaults to null-ls if not specified)
	-- #{c}: code (if available)
	diagnostics_format = "[#{s}] #{m}",
	on_attach = function(_)
		vim.cmd([[ command! Format execute 'lua vim.lsp.buf.format({async=true})']])
	end,
})
