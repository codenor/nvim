return {
	"https://gitlab.com/itaranto/plantuml.nvim",
	opts = {
		renderer = {
			type = "image",
			options = {
				prog = "imv",
				dark_mode = false,
			},
		},
		render_on_write = true,
	},
}
