local plugins = {
  -- Mason
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "jdtls"
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
    branch = "master",
    lazy = false,
    config = function ()
      vim.cmd([[VMTheme codedark]])
    end
  },

  -- fugitive.vim: A Git wrapper so awesome, it should be illegal
  {
    "tpope/vim-fugitive",
    lazy = false,
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
    "irdaislakhuafa/vim-move",
    lazy = false,
    branch = "keymaps/vscode",
    config = function ()
      require("core.utils").load_mappings("vim_move")
    end
  },

  -- override nvim-tree default config
  {
    "nvim-tree/nvim-tree.lua",
    config = function ()
      dofile(vim.g.base46_cache .. "nvimtree")
      local opts = require("custom.configs.nvimtree")
      require("nvim-tree").setup(opts)
      vim.g.nvimtree_side = opts.view.side
    end
  },

  -- indentations guides
  {
    "lukas-reineke/indent-blankline.nvim",
    lazy = false,
    opts = function ()
      return require("custom.configs.indent-blankline")
    end,
    config = function (_, opts)
      require("indent_blankline").setup(opts)
    end
  },

  -- nvim rainbow brackets
  {
    "HiPhish/nvim-ts-rainbow2",
    lazy = false,
    enabled = true,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function ()
      local opts = require("custom.configs.nvim-treesitter")
      require("nvim-treesitter.configs").setup(opts)
    end
  },

  -- lazy git to use git with easy way in neovim
  {
    "kdheepak/lazygit.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  -- ufo code folding
  {
    "kevinhwang91/nvim-ufo",
    lazy = false,
    dependencies = {
      "kevinhwang91/promise-async",
      "nvim-treesitter/nvim-treesitter",
      "neovim/nvim-lspconfig",
    },
    config = function ()
      local opts = require("custom.configs.nvim-ufo")
      require("ufo").setup(opts)
    end
  },

  -- nightlify color schema
  {
    "bluz71/vim-nightfly-colors",
    lazy = false,
    priority = 1000,
  },

  -- JDTLS for Java Development
  {
    "mfussenegger/nvim-jdtls",
    ft = { "java" },
    config = function ()
      require("custom.configs.nvim-jdtls")
    end
  },
}

return plugins
