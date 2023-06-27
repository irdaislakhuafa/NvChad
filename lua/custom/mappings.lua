local M = {}

M.general = {
  i = {
    ["<C-s>"] = { "<ESC>:w <CR>", "Write/Save file" },
  },
  n = {
    ["<A-t>"] = { ":Telescope <CR>", "Telescope toggle" },
  }
}

return M
