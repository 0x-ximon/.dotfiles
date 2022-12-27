local status, neo_tree = pcall(require, "neo-tree")
if not status then
	print("Neo-tree isn't working")
end

neo_tree.setup({
	close_if_last_window = true,
	enable_diagnostics = true,
	enable_git_status = true,
	popup_border_style = "rounded",
	sort_case_insensitive = false,
	filesystem = {
		filtered_items = {
			hide_dotfiles = false,
			hide_gitignored = false,
			hide_by_name = {
				".git",
				"node_modules",
			},
		},
	},
	window = { width = 30 },
})
