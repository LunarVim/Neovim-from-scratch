--  vim.cmd [[
--  try
--    colorscheme darkplus
--  catch /^Vim\%((\a\+)\)\=:E185/
--    colorscheme default
--    set background=dark
--  endtry
--  ]]
--vim.cmd "colorscheme default"

local colorscheme = "darkplus"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found")
    return
end
