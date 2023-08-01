-- override annotation highlight
local ui = {
  theme = "oxocarbon",
  theme_toggle = { "oxocarbon", "github_light" },
  changed_themes = {
    nord = {
      base_16 = {
        base00 = "#002b36",
        -- base01 = "",
        -- base02 = "",
        -- base03 = "",
        -- base04 = "",
        -- base05 = "",
        -- base06 = "",
        -- base07 = "",
        base08 = "#3388FF",
        -- base09 = "",
        base0A = "#0066FF",

        -- string
        base0B = "#77CCFF",
        base0C = "#0055ff",
        base0D = "#00aaff",

        -- function
        base0E = "#00aaff",
        -- base0F = "red",
      },
      base_30 = {
        black = "#002b36",
        black2 = "#06313c",
        darker_black = "#002530", -- nvim-tree background
        statusline_bg = "#042f3a",
        nord_blue = "#0055ff",
      },
    },
  },
  oxocarbon = {
    base_16 = {
    },
    base_30 = {
      black = "#002b36",
      black2 = "#06313c",
      darker_black = "#002530", -- nvim-tree background
      statusline_bg = "#042f3a",
    },
  },
  hl_override                  = {
    IndentBlanklineContextChar = { fg = "Label", bg  = "black" },
    CursorLine                 = { bg = "one_bg" },
    CursorColumn               = { bg = "one_bg" },
    Comment                    = { fg = "white" },
    Visual                     = { fg = "reverse", bg  = "reverse" },
    -- VM_Mono                    = { fg = "black", bg  = "lightblue" },
    -- VM_Extend                  = { fg = "black", bg  = "lightblue" },
    -- VM_Cursor                  = { fg = "black", bg  = "lightblue" },
    -- VM_Insert                  = { fg = "black", bg  = "lightblue" },
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
