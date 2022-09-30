vim.cmd [[
function! JsxHotfix()
    setlocal matchpairs=(:),{:},[:],<:>
    let b:match_words = '<\@<=\([^/][^ \t>]*\)\g{hlend}[^>]*\%(/\@<!>\|$\):<\@<=/\1>'
endfunction
let g:matchup_hotfix_jsx = 'JsxHotfix'
let g:loaded_matchit = 1
let g:matchup_matchparen_offscreen = {'method': 'popup'}

]]
