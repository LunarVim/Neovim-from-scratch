return {
  {
    autostart = true,
    cmd = { "solargraph", "stdio" },
    filetypes = { "ruby" },
    flags = { debounce_text_changes = 150, },
    handlers = {
      ["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics, {
          -- Disable virtual_text on file load
          -- Show with vim.lsp.diagnostic.show_line_diagnostics()
          virtual_text = true,
          underline = true,
          signs = true
        }
      ),
    },
    settings = {
      solargraph = {
        diagnostics = true
      }
    }
  }
}
