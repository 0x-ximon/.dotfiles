local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local status, lazy = pcall(require, "lazy")

if not status then
	print("lazy nvim is active and not lazy")
end

local plugins = {
	-- Package Managers
	"williamboman/mason.nvim",

	-- Interface
	{ "projekt0n/github-nvim-theme", version = "v0.0.x" },
	{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	},
	"rcarriga/nvim-notify",
	"christoomey/vim-tmux-navigator",
	"szw/vim-maximizer",
	"nvim-lualine/lualine.nvim",
	"goolord/alpha-nvim",
	{
		"ecthelionvi/NeoColumn.nvim",
		opts = {},
	},

	-- Essential
	"tpope/vim-surround",
	"vim-scripts/ReplaceWithRegister",
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},
	"windwp/nvim-autopairs",
	"windwp/nvim-ts-autotag",
	"lewis6991/gitsigns.nvim",

	-- Auto Completion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",

	-- Snippets
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",

	-- Language Server Configurations
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	{ "glepnir/lspsaga.nvim", branch = "main" },
	"jose-elias-alvarez/typescript.nvim",
	"onsails/lspkind.nvim",

	-- Formatting & Linting
	"jose-elias-alvarez/null-ls.nvim",
	"jayp0521/mason-null-ls.nvim",

	-- Commenting
	"numToStr/Comment.nvim",

	-- Timer
	"wakatime/vim-wakatime",

	-- Dependencies
	"nvim-lua/plenary.nvim",
	"williamboman/mason-lspconfig.nvim",
}

local opt = {}

lazy.setup(plugins, opt)
