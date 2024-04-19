local status, oil = pcall(require, "oil")
if not status then
	print("Oil-nvim isn't working")
end

oil.setup({
	keymaps = {
		["?"] = "actions.show_help",
		["q"] = "actions.close",
	},
})
