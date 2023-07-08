vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.go";
	callback = function ()
		vim.lsp.buf.code_action({
			apply = true,
			context = {
				only = {
					"source.organizeImports"
				},
			},
		})
	end
})

local opts = {
  commands = {
    go = "go",
    gomodifytags = "gomodifytags",
    gotests = "gotests",
    impl = "impl",
    iferr = "iferr",
  }
}
return opts
