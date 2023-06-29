local nvimtree = require("plugins.configs.nvimtree")

nvimtree.git = {
  enable = true,
  ignore = true,
}

nvimtree.renderer.icons.show.git = true
nvimtree.renderer.highlight_git = false

return nvimtree
