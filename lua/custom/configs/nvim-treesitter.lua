local opts = {
  rainbow = {
    enable = true,
    disable = {},
    query = { "rainbow-parens", html = 'rainbow-tags', latex = 'rainbow-blocks' },
    strategy = require("ts-rainbow").strategy.global
  },
}

return opts
