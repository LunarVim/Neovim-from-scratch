
local status_ok, swapbuffers= pcall(require, "swap-buffers")
if not status_ok then
	return
end


local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

swapbuffers.setup({
  ignore_filetypes = {'NvimTree'},
})

-- keymap
keymap("n", "<C-s>h", "<cmd>lua require('swap-buffers').swap_buffers('h')<CR>", opts)
keymap("n", "<C-s>l", "<cmd>lua require('swap-buffers').swap_buffers('l')<CR>", opts)
keymap("n", "<C-s>j", "<cmd>lua require('swap-buffers').swap_buffers('j')<CR>", opts)
keymap("n", "<C-s>k", "<cmd>lua require('swap-buffers').swap_buffers('k')<CR>", opts)
