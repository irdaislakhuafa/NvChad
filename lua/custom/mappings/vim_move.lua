local keymaps = {
  plugin = true,
  -- TODO: fix this
  n = {
    ["<C-S-up>"] = { "<A-k>", "Move line up", { silent = false } },
    ["<C-S-down>"] = { "<A-j>", "Move line down", { silent = false } },
    ["<C-S-left>"] = { "<A-h>", "Move line left", { silent = false } },
    ["<C-S-right>"] = { "<A-l>", "Move line right", { silent = false } },
  },
}
return keymaps
