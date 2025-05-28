return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "AndreM222/copilot-lualine" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count

		-- configure lualine with modified theme
		lualine.setup({
			options = {
				theme = "visual_studio_code",
				icons_enabled = true,
			},
			sections = {
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
					},
					-- { "copilot" },
					{ "encoding" },
					{ "fileformat" },
					"",

					{
						"lsp_status",
						icon = " ",
						symbols = {
							-- Standard unicode symbols to cycle through for LSP progress:
							spinner = { "◜", "◠", "◝", "◞", "◡", "◟" },
							-- Standard unicode symbol for when LSP is done:
							done = "",
							-- Delimiter inserted between LSP names:
							separator = " ",
						},
						-- List of LSP names to ignore (e.g., `null-ls`):
						ignore_lsp = {},
					},
					{
						"filetype",
						colored = false,
					},
				},
			},
		})
	end,
}
