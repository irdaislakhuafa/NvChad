-- <C>      -> Ctrl
-- <leader> -> Space
-- <A>      -> alt
-- <S>      -> shift


local M = {
  -- disabled default keymaps
  disabled = require("custom.mappings.disabled"),
  -- general keymaps
  general = require("custom.mappings.general"),
  -- mapping for DAP (Debug Adapter Protocol)
  dap = require("custom.mappings.dap"),
  -- mapping for nvim-dap-go
  dap_go = require("custom.mappings.dap_go"),
  -- mapping for gopher.nvim
  gopher = require("custom.mappings.gopher"),
  -- align text with Tabular.vim
  tabular = require("custom.mappings.tabular"),
  -- move line
  vim_move = require("custom.mappings.vim_move"),
}


return M
