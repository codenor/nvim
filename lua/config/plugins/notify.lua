return {
	"rcarriga/nvim-notify",
	event = "VeryLazy",
	config = function()
		vim.notify = require("notify")
		require("notify").setup({
			render = "wrapped-default",
			max_width = "80",
			fps = 60,
		})
	end,
}
