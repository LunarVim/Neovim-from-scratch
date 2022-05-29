-- :help options
<<<<<<< HEAD
local options = {
-- Display settings:
  fileencoding = "utf-8",                              -- The encoding written to a file.
  showtabline = 2,                                     -- Always show tabs.
  cmdheight = 2,                                       -- More space in the neovim command line, for displaying messages.
  pumheight = 10,                                      -- Pop up menu height.
  splitbelow = true,                                   -- Force all horizontal splits, to go below current window.
  splitright = true,                                   -- Force all vertical splits, to go to the right of current window.
-- Theme:
  termguicolors = true,                                -- Set terminal GUI colors.
  cursorline = true,                                   -- Highlight the current line.
  cursorcolumn = true,                                 -- Enable a vertical column.
  number = true,                                       -- Set numbered lines.
  relativenumber = true,                               -- Set relative numbered lines.
  numberwidth = 4,                                     -- set number line column width up to 4(default 4).
  signcolumn = "yes",                                  -- Always show the sign column, or it would shift the text each time.
-- Functionality:
  mouse = "a",                                         -- Allow the mouse to be used in neovim.
  backup = true,                                       -- Creates a backup file, before edits are written.
  clipboard = "unnamedplus",                           -- Allows neovim to access the system clipboard.
  swapfile = true,                                     -- Creates a swapfile.
  timeoutlen = 1000,                                   -- Time to wait, for a mapped sequence to complete(in milliseconds).
  undofile = true,                                     -- Enable persistent undo.
  undodir = "~/.config/nvim/persistant_undo_history",  -- Sets the directory to store persistant-undo saves.
  updatetime = 300,                                    -- Faster completion(4000ms default).
  writebackup = true,                                  -- Write a backup file, before saving.
  completeopt = { "menuone", "noselect" },             -- Mostly just for cmp. ???
-- Text-formatting:
  conceallevel = 0,                                    -- Added so `` is visible in markdown files.
  smartindent = true,                                  -- Keep indention from line-to-line.
  expandtab = true,                                    -- Convert tabs into spaces.
  shiftwidth = 4,                                      -- The number of spaces inserted for each indentation
  tabstop = 4,                                         -- Insert 2 spaces for each tab.
  wrap = true,                                         -- Wrap my code-lines on the visible screen.
  guifont = "monospace:h17",                           -- The font used in graphical neovim applications.
-- Search:
  hlsearch = true,                                     -- Highlight all matches on when searching.
  incsearch = true,                                    -- Turn on incremental search highlighting.
  ignorecase = true,                                   -- Ignore case in search patterns.
  smartcase = false,                                   -- Overides ignore case, w/ capitals. Default = false.
}
=======
vim.opt.backup = true                           -- Creates a backup file, before edits are written.
vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2                           -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
vim.opt.pumheight = 10                          -- pop up menu height
vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2                         -- always show tabs
vim.opt.smartcase = true                        -- smart case
vim.opt.smartindent = true                      -- make indenting smarter again
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false                        -- creates a swapfile
-- vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true                         -- enable persistent undo
vim.opt.updatetime = 300                        -- faster completion (4000ms default)
vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2                             -- insert 2 spaces for a tab
vim.opt.cursorline = true                       -- highlight the current line
vim.opt.number = true                           -- set numbered lines
vim.opt.relativenumber = false                  -- set relative numbered lines
vim.opt.numberwidth = 4                         -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false                            -- display lines as one long line
vim.opt.scrolloff = 8                           -- is one of my fav
vim.opt.sidescrolloff = 8
vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications
>>>>>>> 26a3b7e (Enabled backup files.)

-- A lua for-loop to loop through the above table of options.
-- A table is a list, that is allowed key, value pairs.
  for k, v in pairs(options) do
    vim.opt[k] = v
  end

-- Enabling editor pips/EOL/trails/ext/pre...
  vim.o.list = true  -- Set special formatting characters to on.
  vim.o.listchars = 'eol:↲,trail:~,precedes:<,extends:>,space:·'

-- Did NOT fit well within the options loop , without throwing errors and disabling the loop.
  vim.opt.shortmess:append "I"                    -- Set No Intro-message for Neo-vim.

-- vim.cmd Passes strings, that will be interpreted as vim-script.
-- vim.cmd "set whichwrap+=<,>,[,],h,l" Want to find out what it does, before blindly enabling it.
  vim.cmd [[set iskeyword+=-]] -- Will treat words with a dash as part of a single word.
--vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
