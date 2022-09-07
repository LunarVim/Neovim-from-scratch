local ls = require 'luasnip'
local types = require 'luasnip.util.types'

ls.config.set_config {
  -- history = true,

  update_events = 'TextChanged,TextChangedI',

  -- enable_autosnippets = true,

  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { '●', 'LuasnipChoice' } },
      },
    },
    [types.insertNode] = {
      active = {
        virt_text = { { '●', 'LuasnipInsert' } },
      },
    },
  },
}

-- Mappings

_G.tab_complete = function()
  if ls and ls.expand_or_jumpable() then
    return '<Plug>luasnip-expand-or-jump'
  else
    return '<tab>'
  end
end
vim.keymap.set({ 'i', 's' }, '<tab>', 'v:lua.tab_complete()', { expr = true })

_G.shift_tab_jump = function()
  if ls.jumpable(-1) then
    return '<Plug>luasnip-jump-prev'
  else
    return '<s-tab>'
  end
end
vim.keymap.set({ 'i', 's' }, '<s-tab>', 'v:lua.shift_tab_jump()', { expr = true })

vim.keymap.set({ 'i', 's' }, '<c-k>', function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end, { silent = true })

-- Reload snippets config
vim.keymap.set('n', '<leader>sl', '<cmd>source ~/.config/nvim/lua/j/plugins/luasnip.lua<cr>')

-- Snippets

require 'user.snippets.lua'
require 'user.snippets.javascript'
require 'user.snippets.typescript'
require 'user.snippets.typescriptreact'
