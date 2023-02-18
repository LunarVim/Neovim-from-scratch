return {
  on_setup = function(server)
    server.setup({
      settings = {
        json = {
          schemas = require("schemastore").json.schemas(),
        },
      },
      capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
      flags = {
        debounce_text_changes = 150,
      },
      on_attach = function(client, bufnr)
        -- 禁用格式化功能，交给专门插件插件处理
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
        -- 绑定快捷键
        local function buf_set_keymap(...)
          vim.api.nvim_buf_set_keymap(bufnr, ...)
        end
        require("keymaps").mapLSP(buf_set_keymap)
      end,
    })
  end,
}
