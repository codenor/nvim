local M = {}

function M.setup()
	local hl = vim.api.nvim_set_hl

	-- neogit
	hl(0, "NeogitWinSeparator", { link = "WinSeparator" })

	hl(0, "NeogitDiffAdd", { fg = "#81b88b", bg = "#2d3a27" })
	hl(0, "NeogitDiffAddHighlight", { fg = "#81b88b", bg = "#3a4d33" })
	hl(0, "NeogitDiffAddCursor", { fg = "#81b88b", bg = "#384d35" })

	hl(0, "NeogitDiffDelete", { fg = "#c74e39", bg = "#3c1f1f" })
	hl(0, "NeogitDiffDeleteHighlight", { fg = "#c74e39", bg = "#4d2525" })
	hl(0, "NeogitDiffDeleteCursor", { fg = "#c74e39", bg = "#532828" })

	hl(0, "NeogitDiffContext", { fg = "#BBBBBB", bg = "#1e1e1e" })
	hl(0, "NeogitDiffContextHighlight", { fg = "#BBBBBB", bg = "#2a2a2a" })
	hl(0, "NeogitDiffContextCursor", { fg = "#BBBBBB", bg = "#333333" })

	hl(0, "NeogitDiffHeader", { fg = "#cccccc", bg = "#1e1e1e" })
	hl(0, "NeogitDiffHeaderHighlight", { fg = "#cccccc", bg = "#2a2a2a" })

	hl(0, "NeogitHunkHeader", { fg = "#e2c08d", bg = "#262626" })
	hl(0, "NeogitHunkHeaderHighlight", { fg = "#e2c08d", bg = "#333333" })
	hl(0, "NeogitHunkHeaderCursor", { fg = "#e2c08d", bg = "#3a3a3a" })

	-- lsp signature highlights
	hl(0, "NormalFloat", { fg = "#cdd6f4" })
	hl(0, "FloatBorder", { fg = "#569CD6" })
	hl(0, "LspSignatureActiveParameter", { bg = "#4e4e4e", bold = true })

	-- VSCode-like barbar tab styling
	hl(0, "BufferCurrent", { fg = "#D4D4D4", bg = "#1e1e1e", bold = true }) 
	hl(0, "BufferCurrentMod", { fg = "#E2C08D", bg = "#1e1e1e", bold = true })
	hl(0, "BufferCurrentSign", { fg = "#569CD6", bg = "#1e1e1e" })

	hl(0, "BufferInactive", { fg = "#808080", bg = "#252526" })
	hl(0, "BufferInactiveMod", { fg = "#C586C0", bg = "#252526" })
	hl(0, "BufferInactiveSign", { fg = "#3C3C3C", bg = "#252526" })

	hl(0, "BufferVisible", { fg = "#D4D4D4", bg = "#2D2D2D" })
	hl(0, "BufferVisibleSign", { fg = "#2D2D2D", bg = "#2D2D2D" })

	hl(0, "BufferTabpageFill", { bg = "#1e1e1e" }) 
	hl(0, "BufferOffset", { fg = "#D4D4D4", bg = "#1e1e1e" })
end

return M
