vim.cmd([[
  autocmd VimEnter * set buftype=""

  " disable swapfile "
  set noswapfile

  " set cursor line "
  set cursorline
  
  " set cursorcolumn "
  set cursorcolumn

  " enable code folding with nvim-treesitter "
  " set foldmethod=expr
  " set foldexpr=nvim_treesitter#foldexpr()
]])
