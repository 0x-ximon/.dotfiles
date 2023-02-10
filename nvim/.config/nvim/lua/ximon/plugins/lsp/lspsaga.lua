local status, lspsaga = pcall(require, "lspsaga")
if not status then
	print("Lspsaga not working")
end

lspsaga.setup({
	move_in_saga = { prev = "<C-k>", next = "<C-j>" },

	finder_action_keys = {
		open = "<CR>",
	},

	definition_action_keys = {
		edit = "<CR>",
	},
})
