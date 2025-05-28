return {
	"TobinPalmer/Tip.nvim",
	lazy = false,
	event = "VimEnter",
	config = function()
		-- Default config
		--- @type Tip.config
		require("tip").setup({
			seconds = 5,
			title = "Tip!",
			url = "https://vtip.43z.one", -- Or https://vimiscool.tech/neotip
		})
	end,
	dependencies = { "nvim-lua/plenary.nvim" },
}
