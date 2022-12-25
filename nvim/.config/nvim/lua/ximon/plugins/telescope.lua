local status, telescope = pcall(require, "telescope")
if not status then
	print("Telescope is crazy")
end

local actions = require("telescope.actions")

telescope.setup({
	defaults = {
		mappings = {
			n = {
				["q"] = actions.close,
			},
		},
	},
})
