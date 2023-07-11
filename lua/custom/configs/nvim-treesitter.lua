vim.cmd([[
  hi TSRainbowRed    guifg='#00aaff'
  hi TSRainbowYellow guifg='#ffff00'
  hi TSRainbowBlue   guifg='#00ff1e'
  hi TSRainbowOrange guifg='#55aaff'
  hi TSRainbowViolet guifg='#ff00ff'
  hi TSRainbowCyan   guifg='#55ffff'
  hi TSRainbowGreen  guifg='#00ff7f'
]])


local opts = {
  rainbow = {
    enable = true,
    disable = {},
    query = { "rainbow-parens", html = 'rainbow-tags', latex = 'rainbow-blocks' },
    strategy = require("ts-rainbow").strategy.global
  },
}

return opts
