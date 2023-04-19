local status, github_theme = pcall(require, "github-theme")
if not status then
	print("Github theme not installed")
end

github_theme.setup({
	options = {
		transparent = true,
	},

	darken = {
		floats = true,
		sidebars = {
			enable = true,
		},
	},
})

vim.cmd.colorscheme("github_dark")
