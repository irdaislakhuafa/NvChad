local o = vim.o
o.foldcolumn = '1'
o.foldlevel = 99
o.foldlevelstart = 99
o.foldenable = true

return {
  provider_selector = function (bufnr, filetype, buftype)
    return {'treesitter', 'indent'}
  end
}
