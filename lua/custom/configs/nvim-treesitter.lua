local opts = {
  rainbow = {
    enable = true,
    disable = {},
    query = "rainbow-parens",
    strategy = require("ts-rainbow").strategy.global
  },
}

return opts
