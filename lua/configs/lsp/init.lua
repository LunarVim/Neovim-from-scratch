local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  print "load lspconfig failed"
  return
end

require "configs.lsp.mason"
require("configs.lsp.lsp-handlers").setup()
require "configs.lsp.null-ls"



