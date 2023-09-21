-- 插件快捷键

local function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Map Esc to kk
map("i", "kk", "<Esc>")

-- 切换窗口
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Reload configuration without restart nvim
map("n", "<leader>r", ":so %<CR>")

-- nvim-tree
-- 打开关闭tree
map("n", "<C-b>", ":NvimTreeToggle<CR>")

-- formatter
map("n", "<leader-f>", ":Format<CR>")

-- auto comments
map("n", "<C-;>", "gcc")
-- map("v", "<C-_>", "gc")



-- 设置快捷键注册到which-key
local wk = require("which-key")
-- wk.register(mappings, opts)
wk.register({
	["<leader>f"] = { name = "file options" },
	["<leader>fg"] = { "<cmd>Format<CR>", "Format file" },
    ["<leader>s"] = { name = "telescope land"},
	["<leader>sf"] = { "<cmd>lua require('telescope.builtin').find_files()<CR>", "find files" },
	["<leader>sg"] = { "<cmd>lua require('telescope.builtin').live_grep()<cr>", "live grep" },
	["<leader>sb"] = { "<cmd>lua require('telescope.builtin').buffers()<cr>", "buffers" },
	["<leader>sh"] = { "<cmd>lua require('telescope.builtin').help_tags()<cr>", "help_tags" },
})


local pluginKeys = {}
-- 列表快捷键
pluginKeys.nvimTree = {
	-- 打开文件或文件夹
	{ key = { "<CR>", "o", "<2-LeftMouse>" }, action = "edit" },
	-- 分屏打开文件
	{ key = "v", action = "vsplit" },
	{ key = "h", action = "split" },
	-- 显示隐藏文件
	{ key = "i", action = "toggle_custom" }, -- 对应 filters 中的 custom (node_modules)
	{ key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
	-- 文件操作
	{ key = "<F5>", action = "refresh" },
	{ key = "a", action = "create" },
	{ key = "d", action = "remove" },
	{ key = "r", action = "rename" },
	{ key = "x", action = "cut" },
	{ key = "c", action = "copy" },
	{ key = "p", action = "paste" },
	{ key = "s", action = "system_open" },
}

return pluginKeys
