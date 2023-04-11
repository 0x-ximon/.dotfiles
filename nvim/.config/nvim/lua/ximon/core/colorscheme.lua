local status, github_theme = pcall(require, "github-theme")
if not status then
	print("Github theme not installed")
end

github_theme.setup({
	transparent = true,
	dark_float = true,
})

vim.cmd.colorscheme("github_dark")
