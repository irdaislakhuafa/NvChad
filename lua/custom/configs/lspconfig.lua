local lspcfg = require("plugins.configs.lspconfig")

lspcfg.capabilities.textDocument.foldingRange = {
	dynamicRegistration = false,
	lineFoldingOnly = true,
}

local cfg = {
  on_attach = lspcfg.on_attach,
  capabilities = lspcfg.capabilities,
}

local lspc = require("lspconfig")
local util = require("lspconfig/util")

-- gopls configuration setup
lspc.gopls.setup({
  on_attach = cfg.on_attach,
  capabilities = cfg.capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      staticcheck = true,
      analyses = {
        unusedParam = true,
      },
    },
  },
})

