-- Embedded Vim Auto-command, that adds file cursor location persistance.
  vim.cmd
  [[
      augroup line_return
          au!
          au BufReadPost *
              \ if line("'\"") > 0 && line("'\"") <= line("$") |
              \     execute 'normal! g`"zvzz' |
              \ endif
      augroup END
  ]]

-- Vertically center the buffer, each time I go into insert mode.
  vim.cmd
  [[
      autocmd InsertEnter * norm zz
  ]]

-- Automatically save & re-fold Documents, when exiting & re-entering the file.
  vim.cmd
  [[
      autocmd BufWinLeave *.* mkview           " Auto-save Folds before leaving a buffer.
      autocmd BufWinEnter *.* silent loadview  " Auto-re-load saved folds.
  ]]
