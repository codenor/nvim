
local M = {}

function M.setup()
  local hl = vim.api.nvim_set_hl

  hl(0, 'NeogitWinSeparator', { link = 'WinSeparator' })

  hl(0, 'NeogitDiffAdd',              { fg = '#81b88b', bg = '#2d3a27' })
  hl(0, 'NeogitDiffAddHighlight',     { fg = '#81b88b', bg = '#3a4d33' })
  hl(0, 'NeogitDiffAddCursor',        { fg = '#81b88b', bg = '#384d35' })

  hl(0, 'NeogitDiffDelete',           { fg = '#c74e39', bg = '#3c1f1f' })
  hl(0, 'NeogitDiffDeleteHighlight',  { fg = '#c74e39', bg = '#4d2525' })
  hl(0, 'NeogitDiffDeleteCursor',     { fg = '#c74e39', bg = '#532828' })

  hl(0, 'NeogitDiffContext',          { fg = '#BBBBBB', bg = '#1e1e1e' })
  hl(0, 'NeogitDiffContextHighlight', { fg = '#BBBBBB', bg = '#2a2a2a' })
  hl(0, 'NeogitDiffContextCursor',    { fg = '#BBBBBB', bg = '#333333' })

  hl(0, 'NeogitDiffHeader',           { fg = '#cccccc', bg = '#1e1e1e' })
  hl(0, 'NeogitDiffHeaderHighlight',  { fg = '#cccccc', bg = '#2a2a2a' })

  hl(0, 'NeogitHunkHeader',           { fg = '#e2c08d', bg = '#262626' })
  hl(0, 'NeogitHunkHeaderHighlight',  { fg = '#e2c08d', bg = '#333333' })
  hl(0, 'NeogitHunkHeaderCursor',     { fg = '#e2c08d', bg = '#3a3a3a' })
end

return M
