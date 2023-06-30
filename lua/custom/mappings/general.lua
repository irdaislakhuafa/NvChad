local keymaps = {
  i = {
    ["<C-s>"] = { "<ESC>:w <CR>", "Write/Save file", { silent = true } },
  },
  n = {
    ["<C-s>"] = { "<ESC>:w <CR>", "Write/Save file", { silent = true } },
    ["<A-t>"] = { ":Telescope <CR>", "Telescope toggle", { silent = true } },
    ["<C-l>"] = { ":NvimTreeToggle <CR>", "Telescope toggle", { silent = true } },
    ["<C-d>"] = { ":t. <CR>", "Duplicate single line", { silent = true } },
    ["<leader>cc"] = { ":Telescope commands <CR>", "VIM commands with Telescope", { silent = true } },
    ["<C-x>"] = { "dd", "Cut current line", { silent = true } },
    ["<leader>eclm"] = { ":set cursorcolumn <CR>", "Enabl cursor column", { silent = true } },
    ["<leader>dclm"] = { ":set nocursorcolumn <CR>", "Disable cursor column", { silent = true } },
    ["<leader>ewrp"] = { ":set wrap <CR>", "Enable wrap text", { silent = true } },
    ["<leader>dwrp"] = { ":set nowrap <CR>", "Disable wrap text", { silent = true } },
  },
  v = {
    -- TODO: handle duplicate multiple line, currently not working
    ["<C-d>"] = {
      function ()
        local function handleDuplicateMultiline()
          local lines = vim.fn.line("'>") - vim.fn.line("'<")
          return ":'<,'>t." .. lines
        end

        vim.api.nvim_command(handleDuplicateMultiline())
      end,
      "Duplicate multiple line", { silent = false } },
    ["<C-x>"] = { "dd", "Cut current line", { silent = true } },
  }
}
return keymaps
