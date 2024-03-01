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
	{ "projekt0n/github-nvim-theme", lazy = false, priority = 1000 },
	{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	},
	{
		"f-person/auto-dark-mode.nvim",
		config = {
			update_interval = 1000,
			set_dark_mode = function()
				vim.api.nvim_set_option("background", "dark")
				vim.cmd("colorscheme github_dark_tritanopia")
			end,
			set_light_mode = function()
				vim.api.nvim_set_option("background", "light")
				vim.cmd("colorscheme github_light_tritanopia")
			end,
		},
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
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
	{
		"goolord/alpha-nvim",
		event = "VimEnter",
		opts = function()
			local dashboard = require("alpha.themes.dashboard")

			local logo = [[
     _                     
(_|   |_/o             
  |   |      _  _  _   
  |   |  |  / |/ |/ |  
   \_/   |_/  |  |  |_/
			]]

			dashboard.section.header.val = vim.split(logo, "\n")

			dashboard.section.buttons.val = {
				dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
				dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
				dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
				dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
				dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
				dashboard.button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
				dashboard.button("q", " " .. " Quit", ":qa<CR>"),
			}
			for _, button in ipairs(dashboard.section.buttons.val) do
				button.opts.hl = "AlphaButtons"
				button.opts.hl_shortcut = "AlphaShortcut"
			end
			dashboard.section.header.opts.hl = "AlphaHeader"
			dashboard.section.buttons.opts.hl = "AlphaButtons"
			dashboard.section.footer.opts.hl = "AlphaFooter"
			dashboard.opts.layout[1].val = 8
			return dashboard
		end,
		config = function(_, dashboard)
			-- close Lazy and re-open when the dashboard is ready
			if vim.o.filetype == "lazy" then
				vim.cmd.close()
				vim.api.nvim_create_autocmd("User", {
					pattern = "AlphaReady",
					callback = function()
						require("lazy").show()
					end,
				})
			end

			require("alpha").setup(dashboard.opts)

			vim.api.nvim_create_autocmd("User", {
				pattern = "LazyVimStarted",
				callback = function()
					local stats = require("lazy").stats()
					local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
					dashboard.section.footer.val = "⚡ Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms"
					pcall(vim.cmd.AlphaRedraw)
				end,
			})
		end,
	},
	{
		"ecthelionvi/NeoColumn.nvim",
		opts = {},
	},

	-- Essential
	"tpope/vim-surround",
	"vim-scripts/ReplaceWithRegister",
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
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
	"akinsho/flutter-tools.nvim",
	"stevearc/conform.nvim",

	-- Formatting & Linting
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvimtools/none-ls-extras.nvim",
		},
	},
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
