-- <C> -> Ctrl
-- <leader> -> Space
-- <A> -> alt
-- <S> -> shift


local M = {}

M.disabled = {
  n = {
    ["<C-n>"] = "",
  }
}

M.general = {
  i = {
    ["<C-s>"] = { "<ESC>:w <CR>", "Write/Save file" },
  },
  n = {
    ["<A-t>"] = { ":Telescope <CR>", "Telescope toggle" },
    ["<C-l>"] = { ":NvimTreeToggle <CR>", "Telescope toggle", { silent = true } },
  }
}

-- mapping for DAP (Debug Adapter Protocol)
M.dap = {
  plugin = true,
  n = {
    ["<leader>dtb"] = { ":DapToggleBreakpoint <CR>", "Add Breakpoint at current line" },
    ["<leader>ods"] = { function ()
      local widget = require("dap.ui.widgets");
      local sidebar = widget.sidebar(widget.scopes);
      sidebar.open();
    end, "Open debugging sidebar" }
  }
}

-- mapping for nvim-dap-go
M.dap_go = {
  plugin = true,
  n = {
    ["<leader>gdtt"] = { function ()
      require("dap-go").debug_test();
    end, "Go debug test" },
    ["<leader>gdtl"] = { function ()
      require("dap-go").debug_last();
    end, "Go debug last test" },
  }
}

-- mapping for gopher.nvim
M.gopher = {
  plugin = true,
  n = {
    ["<leader>gta"] = { ":GoTagAdd ", "Go add struct tags" },
    ["<leader>gtr"] = { ":GoTagRm ", "Go remove struct tags" },
  },
}

return M
