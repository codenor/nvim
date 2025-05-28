return {
	"mangelozzi/nvim-rgflow.lua",
	event = "VeryLazy",
	opts = {
		default_trigger_mappings = false,
		default_ui_mappings = true,
		default_quickfix_mappings = true,
	},
	keys = {
		{
			"<leader>F",
			function()
				require("rgflow").open()
			end,
			desc = "RgFlow: RipGrep Search",
		},
	},
}
