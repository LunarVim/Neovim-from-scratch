
local core_modules = {

"user/options",
"user/keymaps",
"user/plugins",
"user/colorscheme",
"user/cmp",
"user/lsp",
"user/telescope",
"user/treesitter",
"user/autopairs",
"user/comment",
"user/gitsigns",
"user/nvim-tree",
"user/bufferline",
"user/lualine",
"user/toggleterm",
"user/project",
"user/impatient",
"user/indentline",
"user/alpha",
"user/whichkey",
"user/autocommands",

}
-- Using pcall we can handle better any loading issues
for _, module in ipairs(core_modules) do
    local ok, err = pcall(require, module)
    if not ok then
      return
    end
end
