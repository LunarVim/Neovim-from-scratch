# How to Contribute? ✍

There are currently errors showing up in some branches some of the time (currently>=`08-treesitter`) due to plugin updates to names, `patterns` and `options`.  When a plugin updates, instructions can be found in it's vimdoc (usually kept in doc/), README, or by searching through Issues and unmerged Pull Requests of the project page. 

If you want to fix a branch with errors, it can be as mundane as taking the fixes already made in `master` and re-applying them. It's up to the community if you want update the branches. On the plus side, it's a good way to practice being a nerd 🤓

For example: 
 
1. When we started using mason, the lsp folder structure changed. 

2. the dreaded 
```sh
[nvim-cmp] Please use window.documentation = cmp.config.window.bordered() instead.
-- and 
cmp_nvim_lsp.update_capabilities is deprecated, use cmp_nvim_lsp.default_capabilities instead. See :h depr
ecated
```

3. nerdfonts v3.0 requires some updated icons. 

4. plugins could probably be re-pinned to later versions (like the later pinned versions used in [nvim-basic-ide](https://github.com/LunarVim/nvim-basic-ide/tree/master/lua/user) with Neovim v0.9).


## 1. Fork the Project 🍴

Click on `Fork`. Uncheck `Copy the master branch only` to get all the branches. 

![forked](https://user-images.githubusercontent.com/63325246/138092106-83ca7ed0-1ec3-4d01-a90c-ae3362bef4f5.jpg)

## Clone to your machine 🤖

Clone your repository (back up your current nvim config first!).  Typically:

`git clone git@github.com:mygithandle/Neovim-from-scratch.git ~/.config/nvim`

If you created the fork sometime in the past, you want to make sure it is up-to-date with any recent changes. Smash the `Sync Fork` button on your project page, or do it from the commandline. Say you're working on a certain branch. 

```sh
git remote add upstream git@github.com:LunarVim/Neovim-from-scratch.git
git fetch upstream
git checkout 11-gitsigns
git merge upstream/11-gitsigns
```

## 3. Create a new branch 🌵

Give it a name 
`git branch my11-gitsigns`

## 4. Start hacking 🪄

```sh
git checkout my11-gitsigns
nvim
```

## 5. Test and re-test 🔬

```sh
:wq
nvim ~/.config/nvim
```

## 6. Push to your fork on Github ✋

```sh
git add .
git commit -m "replace outdated GitSigns icons"
git push origin mygitsigns-11
```

## 7. Open PR 🎁

When the new branch on your fork is ready to publish, click the `Contribute` button on your forks' project page and select the `Open pull request` option from the drop-down. Select the branch you're working on. 

*Making a pull request, be sure to reference any `Issue #` or other `PR #` in the description.*

<hr>

_Hurray!_ **You've just made a valuable contribution! :partying_face:🎉**

***Thank You***
