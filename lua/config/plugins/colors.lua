return {
	"askfiy/visual_studio_code",
	priority = 1000,
	init = function()
		vim.cmd.colorscheme("visual_studio_code")
		require("theme.neogit-theme-vscode-darkplus-fallback").setup()
		require("visual_studio_code").setup({ mode = "dark"})
	end,
}
