local status, github_theme = pcall(require, "github-theme")
if not status then
	print("Github theme not installed")
end

local time = os.date("*t")

github_theme.setup({
	options = {
		transparent = true,
		darken = {
			floats = true,
		},
	},
})

-- TODO: Find a better way to switch the colorschemes based on the system
-- settings.
if time.hour >= 7 and time.hour < 19 then
	vim.cmd("set background=light")
	vim.cmd("colorscheme github_light")
else
	vim.cmd("set background=dark")
	vim.cmd("colorscheme github_dark")
end
