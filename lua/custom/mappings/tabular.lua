local keymaps = {
  plugin = true,
  n = {
    ["<leader>tab"] = { ":Tabularize /", "Align text with Tabular.vim", { silent = false } },
  },
  v = {
    ["<leader>tab"] = { ":Tabularize /", "Align text with Tabular.vim", { silent = false } },
  },
}
return keymaps
