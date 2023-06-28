local keymaps = {
  plugin = true,
  n = {
    ["<leader>gta"] = { ":GoTagAdd ", "Go add struct tags" },
    ["<leader>gtr"] = { ":GoTagRm ", "Go remove struct tags" },
  },
}
return keymaps
