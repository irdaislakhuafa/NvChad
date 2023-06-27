-- <C> -> Ctrl
-- <leader> -> Space
-- <A> -> alt
-- <S> -> shift


local M = {}

M.general = {
  i = {
    ["<C-s>"] = { "<ESC>:w <CR>", "Write/Save file" },
  },
  n = {
    ["<A-t>"] = { ":Telescope <CR>", "Telescope toggle" },
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
M.dap = {
  plugin = true,
  n = {
    ["<leader>dgt"] = { function ()
      require("dap-go").debug_test();
    end, "Go debug test" },
    ["<leader>dgtl"] = { function ()
      require("dap-go").debug_last();
    end, "Go debug last test" },
  }
}

return M
