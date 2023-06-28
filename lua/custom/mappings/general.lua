local keymaps = {
  i = {
    ["<C-s>"] = { "<ESC>:set buftype=\"\" | :w <CR>", "Write/Save file", { silent = true } },
  },
  n = {
    ["<C-s>"] = { "<ESC>:set buftype=\"\" | :w <CR>", "Write/Save file", { silent = true } },
    ["<A-t>"] = { ":Telescope <CR>", "Telescope toggle", { silent = true } },
    ["<C-l>"] = { ":NvimTreeToggle <CR>", "Telescope toggle", { silent = true } },
    ["<leader>cc"] = { ":Telescope commands <CR>", "VIM commands with Telescope", { silent = true } },
  }
}
return keymaps
