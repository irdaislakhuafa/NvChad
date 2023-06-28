-- <C> -> Ctrl
-- <leader> -> Space
-- <A> -> alt
-- <S> -> shift


local M = {}

M.disabled = require("custom.mappings.disabled")
M.general = require("custom.mappings.general")

-- mapping for DAP (Debug Adapter Protocol)
M.dap = require("custom.mappings.dap")
-- mapping for nvim-dap-go
M.dap_go = require("custom.mappings.dap_go")
-- mapping for gopher.nvim
M.gopher = require("custom.mappings.gopher")
-- align text with Tabular.vim
M.tabular = require("custom.mappings.tabular")
-- move line
M.vim_move = require("custom.mappings.vim_move")

return M
