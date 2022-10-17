local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.notify("Packer Protected call failed. Returning...")
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- Format:
  -- user/repo -- Some useful comment
  -- location of plugins: ~/.local/share/nvim/site/pack/packer/start/ 
  -- being in "start" folder they start automatically. "Start" folder contains cloned repos of plugins whivh have "lua" directory in them where all the useful settings reside
  -- My plugins here


  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "numToStr/Comment.nvim" -- Easily comment stuff
  use "akinsho/bufferline.nvim"
  use "moll/vim-bbye"
  use "nvim-lualine/lualine.nvim"
  use {"akinsho/toggleterm.nvim", commit = "2a787c426ef00cb3488c11b14f5dcf892bbd0bda"}
  use "folke/which-key.nvim"
  use "lukas-reineke/indent-blankline.nvim"
  use 'lewis6991/impatient.nvim'
  use 'goolord/alpha-nvim'
  use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use "nvim-lua/plenary.nvim" -- Useful lua functions used by lots of plugins
  use "lunarvim/colorschemes"  -- colorschemes for lunarvim
  use "folke/tokyonight.nvim" -- more colorschemes

  -- Colorschemes
  -- use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
  use "lunarvim/darkplus.nvim"

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"  -- its an extra source for cmp. Its the [LSP] one
  use "hrsh7th/cmp-nvim-lua"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  use "RRethy/vim-illuminate" -- highlight matching texts when cursor is on it

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use 'nvim-telescope/telescope-media-files.nvim'

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    commit = '5d11dfc27849e3d7435c32dbd8ea9be35bcd990b', -- treesitter syntax highlighting didnt looked as beautiful after this version. Comments etc were all white instead of green
  }

  use 'JoosepAlviste/nvim-ts-context-commentstring'  -- this tells what kind of comment string to use depending on the language
  use "p00f/nvim-ts-rainbow"
  -- use "nvim-treesitter/playground"

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
