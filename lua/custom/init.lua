vim.cmd([[
  autocmd VimEnter * set buftype=""
]])

local opt = vim.opt

opt.cursorline = true
opt.cursorcolumn = true

opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true
opt.shiftwidth = 4

opt.swapfile = false
