local keymaps = {
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

return keymaps
