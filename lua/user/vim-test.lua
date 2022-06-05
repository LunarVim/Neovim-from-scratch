local opts = {noremap = true}
vim.api.nvim_set_keymap('n', '<leader>d', ":w<CR> :TestNearest -strategy=vtr<CR>", opts)
vim.g.VtrOrientation = 'h'
