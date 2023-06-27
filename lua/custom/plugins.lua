local plugins = {
  -- [DISABLED] vs code color scheme for neovim
  -- {
  --   "Mofiqul/vscode.nvim",
  --   config = function ()
  --     -- for dark theme, use "light" for light theme
  --     vim.o.background = "dark"

  --     local opts = require("custom.configs.vscode-conf")
  --     local vscode = require("vscode")
  --     vscode.setup(opts)
  --     vscode.load()
  --   end
  -- }
  
  -- Mason
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
      },
    },
  },

  -- neovim/lsp-config
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end
  },
}
return plugins
