return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			theme = "doom",
			config = {
				week_header = {
					enable = true,
				},
				center = {
					{
						icon = "  ",
						icon_hl = "DashboardIcon",
						desc = "RipGrep",
						desc_hl = "DashboardDesc",
						key = "rip",
						key_hl = "DashboardKey",
						key_format = " [%s]",
						action = function()
							require("rgflow").open()
						end,
					},
					{
						icon = "  ",
						icon_hl = "DashboardIcon",
						desc = "Load Session",
						desc_hl = "DashboardDesc",
						key = "s",
						key_hl = "DashboardKey",
						key_format = " [%s]",
						action = "SessionSearch",
					},
					{
						icon = " ",
						icon_hl = "DashboardIcon",
						desc = "Recent Files",
						desc_hl = "DashboardDesc",
						key = "f",
						key_hl = "DashboardKey",
						key_format = " [%s]",
						action = function()
							local builtin = require("telescope.builtin")
							builtin.oldfiles()
						end,
					},
				},
				vertical_center = true,
				footer = {},
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
