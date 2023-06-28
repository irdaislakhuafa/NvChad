local plugins = {
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
    init = function ()
      require("core.utils").load_mappings("dap")
    end
  },
  -- debug adapter protocol for Go
  {
    "leoluz/nvim-dap-go",
    ft = { "go" },
    dependencies = { "mfussenegger/nvim-dap" },
    config = function (_, opts)
      require("dap-go").setup(opts)
      require("core.utils").load_mappings("dap_go")
    end
  },

  -- gopher.nvim Minimalistic plugin for Go development in Neovim written in Lua
  {
    "olexsmir/gopher.nvim",
    ft = { "go" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function ()
      local opts = require("custom.configs.gopher");
      require("gopher").setup(opts);
      require("core.utils").load_mappings("gopher");
    end,
    build = function ()
      vim.cmd([[silent! GoInstallDeps]])
    end
  },

  -- GraphQL for vim
  {
    "jparise/vim-graphql",
    ft = { "graphql", "gql", "gqls", "graphqls" },
  },

  -- multi cursol in neovim
  {
    "mg979/vim-visual-multi",
    lazy = false,
  },

  -- fugitive.vim: A Git wrapper so awesome, it should be illegal
  {
    "tpope/vim-fugitive",
    lazy = false,
  },

  -- git blamer
  {
    "APZelos/blamer.nvim",
    lazy = false,
    config = function ()
      vim.api.nvim_command(':BlamerShow')
    end
  },

  -- Aligning text with Tabular.vim
  {
    "godlygeek/tabular",
    ft = { "*" },
    config = function ()
      require("core.utils").load_mappings("tabular")
    end
  },

  -- move line like vs code
  {
    "matze/vim-move",
    lazy = false,
    config = function ()
      require("core.utils").load_mappings("vim_move")
    end
  },
}
return plugins
