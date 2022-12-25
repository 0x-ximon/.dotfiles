local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	print("Treesitter not installed")
end

treesitter.setup({
	highlight = {
		enable = true,
	},
	indent = { enable = true },
	autotag = { enable = true },

	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"tsx",
		"yaml",
		"html",
		"rust",
		"python",
		"css",
		"markdown",
		"bash",
		"lua",
		"vim",
		"dockerfile",
	},
	auto_install = true,
})
