local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("mason").setup()
require("mason-lspconfig").setup()
require("user.lsp.handlers").setup()
-- require "user.lsp.null-ls"
