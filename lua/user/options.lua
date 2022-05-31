-- :help options
local options = {
  backup = true,                                       -- Creates a backup file, before edits are written.
  clipboard = "unnamedplus",                           -- Allows neovim to access the system clipboard.
  cmdheight = 2,                                       -- More space in the neovim command line, for displaying messages.
  completeopt = { "menuone", "noselect" },             -- Mostly just for cmp.
  conceallevel = 0,                                    -- Added so `` is visible in markdown files.
  fileencoding = "utf-8",                              -- The encoding written to a file.
  hlsearch = true,                                     -- Highlight all matches on when searching.
  incsearch = true,                                    -- Turn on incremental search highlighting.
  ignorecase = true,                                   -- Ignore case in search patterns.
  mouse = "a",                                         -- Allow the mouse to be used in neovim.
  pumheight = 10,                                      -- Pop up menu height.
  showtabline = 2,                                     -- Always show tabs.
  smartcase = false,                                   -- Overides ignore case, w/ capitals. Default = false.
  smartindent = true,                                  -- Keep indention from line-to-line.
  splitbelow = true,                                   -- Force all horizontal splits, to go below current window.
  splitright = true,                                   -- Force all vertical splits, to go to the right of current window.
  swapfile = false,                                    -- Creates a swapfile.
  termguicolors = true,                                -- Set terminal GUI colors.
  timeoutlen = 1000,                                   -- Time to wait, for a mapped sequence to complete(in milliseconds).
  undofile = true,                                     -- Enable persistent undo.
  undodir = "~/.config/nvim/persistant_undo_history",  -- Sets the directory to store persistant-undo saves.
  updatetime = 300,                                    -- Faster completion(4000ms default).
  writebackup = true,                                  -- Write a backup file, before saving.
  expandtab = true,                                    -- Convert tabs into spaces.
  shiftwidth = 4,                                      -- The number of spaces inserted for each indentation
  tabstop = 4,                                         -- Insert 2 spaces for each tab.
  cursorline = true,                                   -- Highlight the current line.
  cursorcolumn = true,                                 -- Enable a vertical column, that makes a code cross-hair on the current position.
  number = true,                                       -- Set numbered lines.
  relativenumber = true,                               -- Set relative numbered lines.
  numberwidth = 4,                                     -- set number line column width to 4(default 4).
  signcolumn = "yes",                                  -- Always show the sign column, or it would shift the text each time.
  wrap = true,                                         -- Wrap my code-lines on the visible screen.
  guifont = "monospace:h17",                           -- The font used in graphical neovim applications.
}

-- A lua for-loop to loop through the above table of options.
-- A table is a list, that is allowed key, value pairs.
  for k, v in pairs(options) do
    vim.opt[k] = v
  end

-- Did NOT fit well within the options loop above, without throwing errors and disabling the loop.
  vim.opt.shortmess:append "I"                    -- Set No Intro-message for Neo-vim.

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
