
vim.g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unstaged = "",
    staged = "S",
    unmerged = "",
    renamed = "➜",
    deleted = "",
    untracked = "U",
    ignored = "◌",
  },
  folder = {
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
  },
}


local mapKey = require("keybindings")



require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  -- mapkeyings = mapKey.nvimTree,
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

