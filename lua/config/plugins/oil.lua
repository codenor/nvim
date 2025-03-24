return {
	"stevearc/oil.nvim",
	opts = {
		view_options = {
			show_hidden = true,
		},
	},
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			view_options = {
				show_hidden = true,
			},
		})

		vim.keymap.set("n", "<leader>e", ":Oil<CR>", { desc = "Oil [E]xplore" })

		vim.api.nvim_set_hl(0, "OilHidden", { fg = "#6C6C6C", italic = true })
		vim.api.nvim_set_hl(0, "OilHiddenFile", { fg = "#6C6C6C", italic = true })
		vim.api.nvim_set_hl(0, "OilHiddenDir", { fg = "#6C6C6C", italic = true })
	end,
}
