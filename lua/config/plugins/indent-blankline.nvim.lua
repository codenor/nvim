return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	opts = {
		exclude = {
			filetypes = { "alpha", "dashboard", "starter", "lazy" },
			buftypes = { "terminal", "nofile" },
		},
	},
}
