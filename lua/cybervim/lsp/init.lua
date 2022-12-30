local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "cybervim.lsp.mason"
require("cybervim.lsp.handlers").setup()
require "cybervim.lsp.null-ls"
