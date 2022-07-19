local options = {
  -- Core
  backup = false,                          -- creates a backup file
  undofile = true,                         -- enable persistent undo
  swapfile = false,                        -- creates a swapfile
  fileencoding = "utf-8",                  -- the encoding written to a file
  termguicolors = true,                    -- set term gui colors, mandatory for most plugins (most terminals support this, if yours doesn't, e.g. tty, just use vim)
  timeoutlen = 100,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  clipboard = "unnamedplus",               -- use system clipboard
  mouse = "a",                             -- allow the mouse to be used in all modes
  -- UI
  guifont = "monospace:h17",               -- the font used in graphical neovim applications
  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  pumheight = 10,                          -- pop up menu height
  wrap = false,                            -- display lines as one long line
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  showtabline = 2,                         -- always show tabs
  numberwidth = 4,                         -- set number column width to 2 (default 4)
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  number = true,                           -- set numbered lines
  relativenumber = false,                  -- set relative numbered lines
  cursorline = true,                       -- highlight the current line
  -- Search
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  smartcase = true,                        -- don't ignore if there's uppercase
  -- Indent
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  smartindent = true,                      -- make indenting smarter again
  -- Other
  scrolloff = 8,                           -- scroll vertically when the cursor is <8 columns from the end
  sidescrolloff = 8,                       -- horizontally
  whichwrap = "bs<>[]hl",                  -- which "horizontal" chars are allowed to travel to prev/next line, see :help 'whichwrap'

vim.opt.shortmess:append("c") -- don't give Ctrl-P,Ctrl-N messages
vim.opt.runtimepath:remove("/usr/share/vim/vimfiles") -- to separate vim plugins from neovim on Arch
vim.opt.iskeyword:remove("-") -- threat a-word, word- as one w
vim.opt.formatoptions:remove("cro") -- see :help fo-table

for k, v in pairs(options) do
  vim.opt[k] = v
end
