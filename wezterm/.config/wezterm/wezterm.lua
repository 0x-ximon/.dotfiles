-- Pull in the wezterm API
local status, wezterm = pcall(require, "wezterm")

if not status then
	print("Wezterm is not termulating.")
end

-- This table will hold the configuration.
local config = wezterm.config_builder()

local function get_appearance()
	if wezterm.gui then
		return wezterm.gui.get_appearance()
	end

	return "Dark"
end

local function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "GitHub Dark"
	else
		return "Github"
	end
end

-- This is where I need to apply my config choices.
-- config.color_scheme = scheme_for_appearance(get_appearance())
config.color_scheme = scheme_for_appearance(get_appearance())

config.default_cwd = string.format("%s/Projects", wezterm.home_dir)

config.window_padding = {
	left = 20,
	right = 20,
	top = 20,
	bottom = 20,
}

config.hide_tab_bar_if_only_one_tab = true

config.window_decorations = "NONE"

config.font = wezterm.font("FiraMono Nerd Font Mono", { weight = "Bold" })
config.font_size = 12.0

-- and finally, return the configuration to wezterm
return config
