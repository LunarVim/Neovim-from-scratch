local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

--- keeping it centered
keymap("n", "n", "nzzzv",opts)
keymap("n", "N", "Nzzzv",opts)
keymap("n", "J", "mzJ`z",opts)

--- moving text
keymap("v", "J", ":m '>+1<CR>gv=gv",opts)
keymap("v", "K", ":m '<-2<CR>gv=gv",opts)

-- Navigate buffers
--- behave like other capitals
keymap("n", "Y", "y$",opts)
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to exit insert mode 
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)


--NvimTree @Conflict probably
keymap("n", "<leader>o", ":NvimTreeOpen<CR>"            ,opts)
keymap("n", "<leader>e", ":NvimTreeToggle<CR>"          ,opts)
keymap("n", "<leader>r", ":NvimTreeRefresh<CR>"         ,opts)
keymap("n", "<leader>n", ":NvimTreeFindFileToggle<CR>"  ,opts)
keymap("n", "<leader>f", ":NvimTreeFocus<CR>"           ,opts)



-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- >> move fast with crtl move
vim.keymap.set("n", '<C-h>', "b",    {noremap = true, silent = true}) 
vim.keymap.set("n", '<C-l>', "w",    {noremap = true, silent = true}) 

vim.keymap.set("n", '<C-Left>', "b",{noremap = true, silent = true})  
vim.keymap.set("n", '<C-Right>',  "w",{noremap = true, silent = true})  

vim.keymap.set('n', '<C-j>', "}",{noremap = true, silent = true})
vim.keymap.set('n', '<C-k>', "{",{noremap = true, silent = true})

vim.keymap.set('n', '<C-Up>', "{",{noremap = true, silent = true})
vim.keymap.set('n', '<C-Down>', "}",{noremap = true, silent = true})


vim.keymap.set("i", '<C-Up>', 
  function ()
    print("hello")
    vim.call("spellbadword")
  end, 

  {noremap = true, silent = true}
)
-- << move fast with crtl move

-- >> Shift Selection :
vim.keymap.set('n', '<S-Up>', "v<Up>",{noremap = true, silent = true})
vim.keymap.set('n', '<S-Down>', "v<Down>",{noremap = true, silent = true})

vim.keymap.set('n', '<S-Left>', "v",{noremap = true, silent = true})
vim.keymap.set('n', '<S-Right>', "v",{noremap = true, silent = true})

vim.keymap.set('i', '<S-Up>', "<C-o>v<Up>",{noremap = true, silent = true})
vim.keymap.set('i', '<S-Down>', "<C-o>v<Down>",{noremap = true, silent = true})

vim.keymap.set('i', '<S-Left>', "<C-o>v<Left>",{noremap = true, silent = true})
vim.keymap.set('i', '<S-Right>', "<C-o>v<Right>",{noremap = true, silent = true})

vim.keymap.set('v', 'i', "<ESC><ESC>",{noremap = true, silent = true})
vim.keymap.set('v', '<S-Up>', "<Up>",{noremap = true, silent = true})
vim.keymap.set('v', '<S-Down>', "<Down>",{noremap = true, silent = true})

vim.keymap.set('v', '<S-Left>', "<Left>",{noremap = true, silent = true})
vim.keymap.set('v', '<S-Right>', "<Right>",{noremap = true, silent = true})
-- << Shift Selection :

-- >> Set back and forth in code to be Alt keys
vim.keymap.set('n', '<M-Left>', "<C-o>",{noremap = true, silent = true})
vim.keymap.set('n', '<M-Right>', "<C-i>",{noremap = true, silent = true})
-- << Shift Selection :
-- <<

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set("n", "<leader><leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<C-s>", ":/")

vim.keymap.set("n", '<M-Up>', "ddkP") --// Moving the line up
vim.keymap.set("n", '<M-Down>', "ddjP") -- // Moving the line down


vim.keymap.set("i", '<C-s>', "<C-c>:w<CR>li") -- saving with crt + s on insert mode 
vim.keymap.set("n", '<C-s>', ":w<CR>") -- saving with crt + s on insert mode 

vim.keymap.set("v", '<M-Up>', ":m '<-2<CR>gv=gv")
vim.keymap.set("v", '<M-Down', ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("v", "<leader>p", "\"+p")
vim.keymap.set("n", "<leader>p", "\"+P")

-- Maybe the same button for entering in both modes ??
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format()
end)

--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)