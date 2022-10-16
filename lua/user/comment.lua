local status_ok, comment = pcall(require, "Comment")
if not status_ok then
    return
end

comment.setup {
    pre_hook = function(ctx) 
        local U = require "Comment.utils"

        local location = nil
        if ctx.ctype == U.ctype.blockwise then
            location = require("ts_context_commentstring.utils").get_cursor_location()
        elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
            location = require("ts_context_commentstring.utils").get_visual_start_location()
        end

        return require("ts_context_commentstring.internal").calculate_commentstring {
            key = ctx.ctype == U.ctype.linewise and "__default" or "__multiline",
            location = location,
        }
    end,

    -- keymaps
    -- Add a space b/w comment and the line
    padding = true,
    -- Whether the cursor should stay at its position
    sticky = true,
    -- Lines to be ignored while (un)comment
    ignore = nil,
    -- LHS of toggle mappings in NORMAL mode
    toggler = {
        -- Line-comment toggle keymap
        line = 'gcc',
        -- Block-comment toggle keymap
        block = 'gbc',
    },
    -- LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
        -- Line-comment keymap
        line = 'gc',
        -- Block-comment keymap
        block = 'gb',
    },
    -- LHS of extra mappings
    extra = {
        -- Add comment on the line above
        above = 'gcO',
        -- Add comment on the line below
        below = 'gco',
        -- Add comment at the end of line
        eol = 'gcA',
    },
    -- Enable keybindings
    -- NOTE: If given `false` then the plugin won't create any mappings
    mappings = {
        -- Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        basic = true,
        -- Extra mapping; `gco`, `gcO`, `gcA`
        extra = true,
    },

}
