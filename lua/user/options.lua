-- :help options
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
  hidden = true,                                       -- Saves all buffers before an exit. if hidden biffers exist.
}
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
