local nvimtree = require("plugins.configs.nvimtree")

nvimtree.git = {
  enable = true,
  ignore = true,
}

nvimtree.renderer.icons.show.git = true
nvimtree.renderer.highlight_git = false
nvimtree.renderer.root_folder_label = true
nvimtree.renderer.indent_markers.enable = true

return nvimtree
