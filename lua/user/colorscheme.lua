vim.cmd [[
try
  colorscheme onedarker
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
