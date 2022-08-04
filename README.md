* [Packer](https://github.com/wbthomason/packer.nvim) - for Vim Plugin management
* [Treesitter](nvim-treesitter/nvim-treesitter)
* [Telescope](https://www.youtube.com/watch?v=OhnLevLpGB4&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ&index=9)
* LSP and completion support 
* [Toggleterm](https://www.youtube.com/watch?v=5OD-7h7gzxU&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ&index=18)
* [LazyGit](https://github.com/kdheepak/lazygit.nvim)
* [Alpha Greeter Menu](https://github.com/goolord/alpha-nvim)
* [Bufferline](https://www.youtube.com/watch?v=vJAmjAax2H0&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ&index=16) - Buffers displayed as a Tab line
* [NvimTree File Explorer](https://www.youtube.com/watch?v=SpexCBrZ1pQ&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ&index=15)
* [Lua Snip](https://github.com/L3MON4D3/LuaSnip") - Snippet support
* [Project Management Plugin](https://github.com/ahmedkhalf/project.nvim) - keeps track of your projects so you quickjump / Telescope cd to them
* [WhichKey](https://github.com/folke/which-key.nvim)

Things I've added:
* Go LSP and debugger support. (You'll need to install gopls and delve)
  - gopls with or without Bazel  If you open a non Bazel Go project, Gopls should still work as we detect if there is a GOPACKAGESDRIVER Bazel shell script to use in the repo and if not we don't set the environment variable to use it..
  - [Nvim Dap Debugger](https://github.com/mfussenegger/nvim-dap) + [Dap Go Adapter](https://github.com/leoluz/nvim-dap-go) + [Nvim Dap UI](https://github.com/rcarriga/nvim-dap-ui) + [nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text)
    - Debugger options can be accessed via `<leader + d>`
* Git add ons: 
  - [vim-fugitive](https://github.com/tpope/vim-fugitive)
  - [vim-rhubarb](https://github.com/tpope/vim-rhubarb) -- Opens Github in a browser
  - [gv.vim](https://github.com/junegunn/gv.vim) -- Git history
  - [critiq.vm](https://github.com/AGhost-7/critiq.vim) -- Pull requests in Git
  - [ripgrep](https://github.com/BurntSushi/ripgrep)
* [Vimwiki](https://github.com/vimwiki/vimwiki)
* [Taskwiki](https://github.com/tools-life/taskwiki)

  

Overview Video : https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ

Leader key is mapped to `<space>`. If you just want to see the keymaps available to you, just hit space in normal mode and you should get a menu popup. There is also a nice default menu if you just open nvim without editing a file.

# Neovim from scratch

**Important Update** When I initially created this repo I didn't anticipate the amount of breaking changes, if you'd like to use the same basic config as this one as a base I recommend my new repo: [nvim-basic-ide](https://github.com/LunarVim/nvim-basic-ide)

**Another Update** This repo should work fine with Neovim 0.8, also all packages are pinned so it should remain stable.

Each video will be associated with a branch so checkout the one you are interested in, you can follow along with this [playlist](https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ).

## Try out this config

Make sure to remove or move your current `nvim` directory

**IMPORTANT** Requires [Neovim v0.8.0](https://github.com/neovim/neovim/releases).  [Upgrade](#upgrade-to-latest-release) if you're on an earlier version. 
```
git clone https://github.com/LunarVim/Neovim-from-scratch.git ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed 

**NOTE** (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim) 

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste

- On mac `pbcopy` should be builtin

- On Ubuntu

  ```
  sudo apt install xsel
  ```

- On Arch Linux

  ```
  sudo pacman -S xsel
  ```

Next we need to install python support (node is optional)

- Neovim python support

  ```
  pip install pynvim
  ```

- Neovim node support

  ```
  npm i -g neovim
  ```
---

**NOTE** make sure you have [node](https://nodejs.org/en/) installed, I recommend a node manager like [fnm](https://github.com/Schniz/fnm).

### Upgrade to latest release

Assuming you [built from source](https://github.com/neovim/neovim/wiki/Building-Neovim#quick-start), `cd` into the folder where you cloned `neovim` and run the following commands. 
```
git pull
make distclean && make CMAKE_BUILD_TYPE=Release
sudo make install
nvim -v
```

> The computing scientist's main challenge is not to get confused by the complexities of his own making. 

\- Edsger W. Dijkstra
