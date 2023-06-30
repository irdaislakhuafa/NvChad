local ui = {
  theme = "nord",
  theme_toggle = { "nord", "github_light" },
  changed_themes = {
    nord = {
      base_16 = {
        base00 = "#002b36",
      },
      base_30 = {
        black = "#002b36",
        black2 = "#06313c",
        darker_black = "#002530", -- nvim-tree background
        statusline_bg = "#042f3a",
      },
    },
  },
  hl_override = {
    IndentBlanklineContextChar = {
      fg = "Label",
      bg = "black"
    },
    CursorLine = {
      bg = "one_bg",
    },
    CursorColumn = {
      bg = "one_bg",
    },
  },
  statusline = {
    separator_style = "arrow",
  },
  nvdash = {
    load_on_startup = true,
    buttons = {
      { "      { Irda Islakhu Afa }", "", "" },
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "🔖 Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
  cheatsheet = {
    theme = "grid",
  },
  telescope = {
    style = "bordered",
  },
  tabufline = {
    show_numbers = false,
  },
}

return ui
