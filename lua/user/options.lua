-- :help options
local options = {
  backup = true,                           -- Creates a backup file, before edits are written.
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  incsearch = true,                        -- Turn on incremental search highlighting.
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showtabline = 2,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 1000,                       -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = true,                      -- Write a backup file, before saving.
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  cursorline = true,                       -- highlight the current line
  cursorcolumn = true,                     -- Enable a vertical column, that makes a code cross-hair on the current column.
  number = true,                           -- set numbered lines
  relativenumber = true,                   -- set relative numbered lines
  numberwidth = 4,                         -- set number column width to 2 {default 4}
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = true,                             -- Wrap my code-lines on the visible screen.
  scrolloff = 8,                           -- is one of my fav
  sidescrolloff = 8,
  guifont = "monospace:h17",               -- the font used in graphical neovim applications
}

-- Did NOT fit well within the options loop above, without throwing errors and disabling the loop.
  vim.opt.shortmess:append "I"                    -- Set No Intro-message for Neo-vim.

-- A lua for-loop to loop through the above table of options.
-- A table is a list, that is allowed key, value pairs.
  for k, v in pairs(options) do
    vim.opt[k] = v
  end

--###########################################################
--# The line below will update:                             #
--# The tab character to                 → unicode u2192    #
--# The end of line character to         ↲ unicode u21b2    #
--###########################################################
  -- vim.wo.listchars = { space = '·',eol = '↲',tab = '→',trail= '~',extends = '>',precedes = '<' }
  vim.o.list = true                        -- Set special formatting characters to on.
  -- vim.o.listchars = 'eol:↲,tab:→,trail:~,precedes:<,extends:>,space:·'
  vim.o.listchars = 'eol:↲,trail:~,precedes:<,extends:>,space:·'

-- vim.cmd Passes strings, that will be interpreted as vim-script.
-- vim.cmd "set whichwrap+=<,>,[,],h,l" Want to find out what it does, before blindly enabling it.
  vim.cmd [[set iskeyword+=-]] -- Will treat words with a dash as part of a single word.
--vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
