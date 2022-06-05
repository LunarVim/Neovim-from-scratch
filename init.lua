require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.gitsigns"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.impatient"
require "user.indentline"
require "user.alpha"
require "user.whichkey"
require "user.autocommands"
require "user.telescope-fzf-native"
require "user.vim-test"
-- require "user.hop"
-- require "phaazon/hop.nvim"

-- NOTE
-- hover K (xxx def)
--- error info gl -> detail
-- gd go to
-- gr on word search where has that string or Telescope: lsp_reference
-- Telescope ... theme=dropdown|ivy|cursor
--<leader>f Telescope find_files...
-- cmp-xx has extensions
-- TSPHIGHT...

-- ensure_installed = "all" -> need to install treesitter to make it work
-- sorbet is not working

-- check doc
-- use :lua vim.lsp... to execute command, use tab to autocomplete
-- use :help vim.lsp... to check doc/ or check github repor doc/

--- nvim-autopair <M+e>

-- comment
-- comment.nvim
-- nvim-ts-context-commentstring
-- gc


-- gitsigns

-- explorer a r d
-- TODO go, click with remaining explorer

-- Bufferline
-- sift + H or L to switch buffer
-- BufferlinePick !! switch by char
-- buffer is not tab, tab has many windows, a wiondow hold a buffer

-- null-ls.vim
-- :lua vim.lsp.buf.formatting_sync()
-- :NullLsInfo

--toggle term
-- <c-\>
-- :lua _LAZYGIT_TOGGLE()

--KEYBOARD
--no bend thumb to click ctrl
--thumb only click two key in ergodox for now actually. to design a new one, we need to aware that.
-- but I use for {}() ergodox another layer
-- ctrl-p for history search

-- use 'tpope/vim-surround'
-- (surround above and below) <visual-mode>+gS 
-- (surround inline) <visual-mode>+S 
-- cs<original surround or single char text-obj><new_surround_char> 
-- ds<add-char> 
-- arround ys<text-object><add-char>
