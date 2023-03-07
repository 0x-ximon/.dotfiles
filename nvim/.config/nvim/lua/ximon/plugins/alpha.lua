local status, alpha = pcall(require, "alpha")
if not status then
	print("Alpha isn't installed")
end

alpha.setup(require("alpha.themes.dashboard").config)
