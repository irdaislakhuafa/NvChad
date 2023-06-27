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

  -- null-ls plugin for auto formatter
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = { "go" },
    opts = function ()
      return require("custom.configs.null-ls")
    end,
  },

  -- nvim-dap (Debug Adapter Protocol)
  {
    "mfussenegger/nvim-dap",
  },
  -- debug adapter protocol for Go
  {
    "leoluz/nvim-dap-go",
    ft = { "go" },
    dependencies = { "mfussenegger/nvim-dap" },
    config = function (_, opts)
      local dap_go = require("dap_go")
      dap_go.setup(opts)
    end
  },
}
return plugins
