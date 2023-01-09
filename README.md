# Neovim from scratch

**Update** When I initially created this repo I didn't anticipate the amount of breaking changes introduced by the rapidly developing plugin ecosystem. If you'd like to use the same basic config as this one as a base I can also recommend my newer repo: [nvim-basic-ide](https://github.com/LunarVim/nvim-basic-ide)

**Another Update**  All packages are pinned in `master` so it will remain stable. Branches will be updated eventually (currently broken from branch #7 onwards. Hint: Good opportunity for pull requests!).

This repository and accompanying tutorials outline the building blocks of modern Neovim for your personalized development environment. Each video is associated with a branch so checkout the one you are interested in, you can follow along with this [playlist](https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ). 

General Neovim support is available on our [Matrix chat](https://matrix.to/#/#neovim-atmachine:matrix.org).

## Try out this config

This config requires [Neovim v0.8.0](https://github.com/neovim/neovim/releases). Please [upgrade](#upgrade-to-neovim-v080) if you're on an earlier version of the editor.

Clone the repository into the correct location (make a backup your current `nvim` directory if you want to keep it).

```
git clone https://github.com/LunarVim/Neovim-from-scratch.git ~/.config/nvim
```

Run `nvim` in your terminal and wait for the plugins to be installed. You will notice treesitter pulling in a bunch of language parsers the next time you open Neovim.

**NOTE** [Mason](https://github.com/williamboman/mason.nvim) is used to install and manage LSP servers, DAP servers, linters, and formatters via the `:Mason` command.

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
  
- Wayland users

  [wl-clipboard](https://github.com/bugaevc/wl-clipboard)


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

### Upgrade to Neovim v0.8.0

Assuming you [built from source](https://github.com/neovim/neovim/wiki/Building-Neovim#quick-start), `cd` into the folder where you cloned `neovim` and run the following commands. 
```
git pull
make distclean && make CMAKE_BUILD_TYPE=Release
git checkout v0.8.0
sudo make install
nvim -v
```

> The computing scientist's main challenge is not to get confused by the complexities of his own making. 

\- Edsger W. Dijkstra
