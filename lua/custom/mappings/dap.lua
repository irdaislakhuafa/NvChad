local keymaps = {
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

return keymaps
