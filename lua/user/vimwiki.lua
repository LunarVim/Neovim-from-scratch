vim.g.vimwiki_list = {
  { 
    path = '~/vimwiki',
    syntax = 'markdown',
    ext = '.md',
  }
}
vim.g.vimwiki_folding = "list"

vim.g.vimwiki_hl_headers = 1  -- use alternating colours for different heading levels
vim.g.vimwiki_global_ext = 0 --" don't treat all md files as vimwiki
vim.g.vimwiki_markdown_link_ext = 1 -- add markdown file extension when generating links
vim.g.taskwiki_markdown_syntax = "markdown"
vim.g.indentLine_conceallevel = 2 -- indentline controlls concel
--vim.set.o.conceallevel = 1 -- so that I can see `` and full urls in markdown files

vim.api.nvim_set_keymap('!', '<F3>', ':VimwikiDiaryPrevDay<CR>', {nowait = true}) -- Not working for some reason
vim.api.nvim_set_keymap('!', '<F4>', ':VimwikiDiaryNextDay<CR>', {nowait = true})

vim.cmd [[
 autocmd BufNewFile */diary/????-??-??.md call New_vimwiki_diary_template()

function New_vimwiki_diary_template()
"" If it's Friday, open a end of week lookback template
   if system('date +%u') == 5
        read ~/vimwiki/new_vimwiki_diary_templateDiary\ TemplateEndOfWeek.md | execute "normal ggdd"
    else
        read  ~/vimwiki/Diary\ Template.md | execute "normal ggdd"
    end
 endfunction
]]

