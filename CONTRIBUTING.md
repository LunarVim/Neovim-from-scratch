# How to Contribute? ✍

Typically you'll be working through the [video series](https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ), you may open `nvim` and there's an error in the config. This is currently true of branches >`06-LSP`. The evolving plugin ecosystem can cause breaking changes to names, `patterns` and `options`. New instructions can be found in the plugins' README (or by searching through the Issues and (unmerged) Pull Requests). This is why plugins are routinely pinned to known working versions (as in `master`).

## 1. Fork the Project 🍴

Click on `Fork`. Uncheck `Copy the master branch only` to get all the branches. 

![forked](https://user-images.githubusercontent.com/63325246/138092106-83ca7ed0-1ec3-4d01-a90c-ae3362bef4f5.jpg)

## Clone to your machine 🤖

Clone your repository. Typically: (back up your current nvim config first!) 

`git clone git@github.com:mygithandle/Neovim-from-scratch.git ~/.config/nvim`

If you created the fork sometime in the past, you want to make sure it is up-to-date with any recent changes. Smash the `Sync Fork` button on your project page, or do it from the commandline. Say you're working on a certain branch. 

```sh
git remote add upstream git@github.com:LunarVim/Neovim-from-scratch.git
git fetch upstream
git checkout 11-gitsigns
git merge upstream/11-gitsigns
```

## 3. Create a new branch 🌵

Name it something meaningful 
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

## 7. Create PR 🎁

When the new branch on your fork is ready to publish, click the `Contribute` button on your forks' project page and select the `Open pull request` option from the drop-down. 

*Making a pull request, be sure to reference any `Issue#` or other `PR#` it solves in the description box.*

<hr>

_Hurray!_ **You've made a valuable contribution! :partying_face:🎉**

***Thank You***

