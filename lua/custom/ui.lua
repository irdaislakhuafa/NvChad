local ui = {
  theme = "nord",
  changed_themes = {
    nord = {
      base_16 = {
        -- base00 = "#2c3e50",
      },
      base_30 = {
        -- black = "#2c3e50",
        -- black2 = "#283d5e",
        -- darker_black = "#2c3e55", -- nvim-tree background
      },
    },
  },
  hl_override = {
    IndentBlanklineContextChar = {
      fg = "#abb2bf",
      bg = "black"
    },
    CursorLine = {
      bg = "one_bg",
    },
    CursorColumn = {
      bg = "one_bg",
    },
  },
}

return ui
