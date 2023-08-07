local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	print("Treesitter not installed")
end

treesitter.setup({
	autopairs = { enable = true },
	highlight = { enable = true },
	autotag = { enable = true },
	auto_install = true,

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
		"sql",
	},

	indent = {
		enable = true,
		disable = { "python", "dart" },
	},
})
