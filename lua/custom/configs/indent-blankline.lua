vim.opt.list = true
vim.opt.listchars:append "eol:↴"
vim.opt.listchars:append "space:⋅"

-- vim.opt.termguicolors = true
-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

local overrided_config = {
  indentLine_enabled = 1,
  show_end_of_line = true,
  show_current_context = true,
  show_current_context_start = true,
  context_highlight_list = { "Label" },
  show_first_indent_level = true,
  -- space_char_blankline = " ",
  -- char_highlight_list = {
  --   "IndentBlanklineIndent1",
  --   "IndentBlanklineIndent2",
  --   "IndentBlanklineIndent3",
  --   "IndentBlanklineIndent4",
  --   "IndentBlanklineIndent5",
  --   "IndentBlanklineIndent6",
  -- },
}

return overrided_config
