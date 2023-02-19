local lcapabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
lcapabilities.offsetEncoding = { "utf-16" }
return {
	on_setup = function(server)
		server.setup({
			capabilities = lcapabilities,
			flags = {
				debounce_text_changes = 150,
			},
			on_attach = function(client, bufnr)
				client.server_capabilities.document_formatting = false
				client.server_capabilities.document_range_formatting = false
				local function buf_set_keymap(...)
					---@diagnostic disable-next-line: missing-parameter
					vim.api.nvim_buf_set_keymap(bufnr, ...)
				end
				require("user.keymaps").mapLSP(buf_set_keymap)
			end,
		})
	end,
}
