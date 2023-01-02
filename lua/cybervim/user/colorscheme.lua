local setup_nord = function ()
  -- Example config in lua
  vim.g.nord_contrast = true
  vim.g.nord_borders = false
  vim.g.nord_disable_background = false
  vim.g.nord_italic = false
  vim.g.nord_uniform_diff_background = true
  vim.g.nord_bold = false

  -- Load the colorscheme
  require('nord').set()
  local highlights = require("nord").bufferline.highlights({
    italic = true,
    bold = true,
  })

  local status_ok, bufferline = pcall(require, "bufferline")
  if status_ok then
    bufferline.setup({
      options = {
          separator_style = "thin",
      },
      highlights = highlights,
    })
  end
end

local setup_material = function()
  local status_ok, material = pcall(require, "material")
  if status_ok then
    material.setup({
      contrast = {
          terminal = false, -- Enable contrast for the built-in terminal
          sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
          floating_windows = false, -- Enable contrast for floating windows
          cursor_line = false, -- Enable darker background for the cursor line
          non_current_windows = false, -- Enable darker background for non-current windows
          filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
      },

      styles = { -- Give comments style such as bold, italic, underline etc.
          comments = { --[[ italic = true ]] },
          strings = { --[[ bold = true ]] },
          keywords = { --[[ underline = true ]] },
          functions = { --[[ bold = true, undercurl = true ]] },
          variables = {},
          operators = {},
          types = {},
      },

      plugins = { -- Uncomment the plugins that you use to highlight them
          -- Available plugins:
          -- "dap",
          -- "dashboard",
          -- "gitsigns",
          -- "hop",
          -- "indent-blankline",
          -- "lspsaga",
          -- "mini",
          -- "neogit",
          -- "nvim-cmp",
          -- "nvim-navic",
          -- "nvim-tree",
          -- "nvim-web-devicons",
          -- "sneak",
          -- "telescope",
          -- "trouble",
          -- "which-key",
      },

      disable = {
          colored_cursor = false, -- Disable the colored cursor
          borders = false, -- Disable borders between verticaly split windows
          background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
          term_colors = false, -- Prevent the theme from setting terminal colors
          eob_lines = false -- Hide the end-of-buffer lines
      },

      high_visibility = {
          lighter = false, -- Enable higher contrast text for lighter style
          darker = false -- Enable higher contrast text for darker style
      },

      lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

      async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

      custom_colors = nil, -- If you want to everride the default colors, set this to a function

      custom_highlights = {}, -- Overwrite highlights with your own
    })
    vim.g.material_style = "deep ocean"
  end
end

local setup_vscode = function()

  local status_ok, vscode = pcall(require, "material")
  if not status_ok then 
    return
  end
  -- For dark theme (neovim's default)
  
  print("Theme: vscode")
  vim.o.background = 'dark'
  -- For light theme
  --vim.o.background = 'light'

  local c = require('vscode.colors')
  vscode.setup({
    -- Enable transparent background
    transparent = true,

    -- Enable italic comment
    italic_comments = true,

    -- Disable nvim-tree background color
    disable_nvimtree_bg = false,

    -- Override colors (see ./lua/vscode/colors.lua)
    --color_overrides = {},

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    group_overrides = {
      --this supports the same val table as vim.api.nvim_set_hl
      -- use colors from this colorscheme by requiring vscode.colors!
      --Cursor  = { fg=c.vscDarkBlue,   bg = c.vscLightGreen, bold=true },
      Namespace = { fg=c.vsDebug, bg = 'NONE', bold=false },
      --comment = { fg=c.vscDarkBlue,   bg = 'NONE'}
    }
  })
  
end

local colorscheme = "tokyonight"
colorscheme = "material"
colorscheme = "codedark"
colorscheme = "nord"
colorscheme = "vscode"

if colorscheme == "material" then
  setup_material()
elseif colorscheme == "nord" then
  setup_nord()
elseif colorscheme == "vscode" then
  setup_vscode()
end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
