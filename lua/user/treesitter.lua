local configs = require("nvim-treesitter.configs")
configs.setup {
    ensure_installed = "all", -- one of "all", "maintained"(actively maintained parsers), or a list of languages. But "maintained" got deprecated, so keep poorly maintained ones in "ignore_install"
    sync_install = false,
    ignore_install = { "" }, -- List of parsers to ignore installing
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "" }, -- list of language that will be disabled
        additional_vim_regex_highlighting = true,

    },
    indent = { enable = true, disable = { "yaml" } },
    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    },
--    playground = {
--        enable = true,
--          disable = {},
--          updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
--          persist_queries = false, -- Whether the query persists across vim sessions
--          keybindings = {
--              toggle_query_editor = 'o',
--              toggle_hl_groups = 'i',
--              toggle_injected_languages = 't',
--              toggle_anonymous_nodes = 'a',
--              toggle_language_display = 'I',
--              focus_language = 'f',
--              unfocus_language = 'F',
--              update = 'R',
--              goto_node = '<cr>',
--              show_help = '?',
--          },
--        }
}
