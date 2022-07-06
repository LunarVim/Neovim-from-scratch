# KeyMap Cheat-Sheet

For anyone who is just starting with this neovim config!

##### Note:

- Vim Commands still work as they do one vanilla neovim
- All keybinds can be changed according to one's preference in the `keymaps.lua` file located at `.../nvim/lua/user/lsp/`

  - To make edits enter (Debian):

    ```sh
    cd ~/.config/nvim/lua/lsp
    nvim keymaps.lua
    ```

  - [Explainer (Video)](https://www.youtube.com/watch?v=435-amtVYJ8&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ&index=3)

- All commands are case sensitive
- Both `<CTRL>` keys (R, L) are supported for commands requiring to press one
- Press `<SPACE>` to open

**Helper Menu can be accessed via `<SPACE>`**

## Normal mode

One can trigger these key-binds directly

#### Buffers (Open Files) Navigation

| Key-Combination |        Action        | Vim Key-Combination |
| :-------------: | :------------------: | :-----------------: |
|   `<SHIFT>+l`   |   Open Next buffer   |      `:bnext`       |
|   `<SHIFT>+h`   | Open Previous buffer |    `:bprevious`     |
|   `<SPACE>+c`   | Close Current Buffer |        `:bd`        |

#### Window Navigation

| Key-Combination |        Action        |
| :-------------: | :------------------: |
|   `<CTRL>+h`    | Move to Left Window  |
|   `<CTRL>+j`    | Move to Window Below |
|   `<CTRL>+k`    | Move to Window Above |
|   `<CTRL>+l`    | Move to Right Window |

#### Window Resize (with arrows)

| Key-Combination |     Action      |  Vim Key-Combination  |
| :-------------: | :-------------: | :-------------------: |
|   `<CTRL>+Up`   | Increase Height |     `:resize -2`      |
|  `<CTRL>+Down`  | Decrease Height |     `:resize +2`      |
|  `<CTRL>+Left`  | Increase Width  | `:vertical resize -2` |
| `<CTRL>+Right`  | Decrease Width  | `:vertical resize +2` |

> Note: Up, Down, Left and Right are the Arrow keys

#### Move text

| Key-Combination |    Action    | Vim Key-Combination |
| :-------------: | :----------: | :-----------------: |
|    `<ALT>+j`    | Move line up |      `:m .+1`       |
|    `<ALT>+k`    | Move line up |      `:m .-2`       |

#### Text Editing

| Key-Combination |      Action      | Vim Key-Combination |
| :-------------: | :--------------: | :-----------------: |
|       `i`       |   Insert Mode    |         `i`         |
|      `jk`       | Exit Insert Mode |       `<ESC>`       |

## Visual Mode

One needs to be in the visual mode for these binds to work

> Note: Press `v` to enter visual mode

#### Add Indentation

| Key-Combination |    Action     | Vim Key-Combination |
| :-------------: | :-----------: | :-----------------: |
|       `<`       | Remove Indent |        `<gv`        |
|       `>`       |  Add Indent   |        `>gv`        |

#### Move text

| Key-Combination |  Action   | Vim Key-Combination |
| :-------------: | :-------: | :-----------------: |
|    `<ALT>+j`    | Move Down |      `:m .+1`       |
|    `<ALT>+k`    |  Move Up  |      `:m .-2`       |

**For those who are beginning with vim/neovim please visit this [site](https://devhints.io/vim) for the basic commands**

Feel free to contribute more to this file!
