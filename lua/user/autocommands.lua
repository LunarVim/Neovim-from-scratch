-- Autocommand that sources autocommands.lua whenever you save it
local au_src = vim.api.nvim_create_augroup("autocommands_source", {clear = true})
vim.api.nvim_create_autocmd(
	"BufWritePost",
	{group = au_src, pattern = "autocommands.lua", command = "luafile <afile>"}
)


local gen_opts = vim.api.nvim_create_augroup("_general_settings", {clear = true})
vim.api.nvim_create_autocmd(
	"FileType", {group = gen_opts,
		pattern = {"qf","help","man","lspinfo"},
		command = "nnoremap <silent> <buffer> q <Cmd>close<CR>"}
)
vim.api.nvim_create_autocmd(
	"TextYankPost", {group = gen_opts,
		command = "silent!lua require('vim.highlight').on_yank({higroup = 'Search', timeout = 200})"}
)
vim.api.nvim_create_autocmd(
	"FileType", {group = gen_opts,
		pattern = "qf",
		command = "set nobuflisted"}
)

local au_git = vim.api.nvim_create_augroup("_git", {clear = true})
vim.api.nvim_create_autocmd(
	"FileType", {group = au_git,
		pattern = "gitcommit",
		command = "setlocal wrap spell"}
)

local au_mark = vim.api.nvim_create_augroup("_markdown", {clear = true})
vim.api.nvim_create_autocmd(
	"FileType", {group = au_mark,
		pattern = "markdown",
		command = "setlocal wrap spell"}
)

local au_res = vim.api.nvim_create_augroup("_auto_resize", {clear = true})
vim.api.nvim_create_autocmd(
	"VimResized", {group = au_res, command = "tabdo wincmd ="}
)

-- Autoformat
-- local au_lsp = vim.api.nvim_create_augroup("_lsp", {clear = true})
-- vim.api.nvim_create_autocmd(
-- 	"BufWritePre", {group = au_lsp, command = "lua vim.lsp.buf.formatting()"}
-- )

-- Using <Bar> instead of | caused my neovim to either error out or remove tabline completely
-- Which is really weird and must be a bug
-- If it still happens to you anyways, use vim.cmd as a fallback
local aulpha = vim.api.nvim_create_augroup("_alpha", {clear = true})
vim.api.nvim_create_autocmd(
	"User", {group = aulpha, pattern = "AlphaReady",
		command = "set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2"
	}
)
-- autocmd! remove all autocommands, if entered under a group it will clear that group
-- vim.cmd [[
-- 	augroup _alpha
-- 		autocmd!
-- 		autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
-- 	augroup end
-- ]]
