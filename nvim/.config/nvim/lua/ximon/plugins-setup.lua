local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	-- Package Managers
	use("wbthomason/packer.nvim")
	use("williamboman/mason.nvim")

	-- Interface
	use("projekt0n/github-nvim-theme")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	})
	use("christoomey/vim-tmux-navigator")
	use("szw/vim-maximizer")
	use("nvim-lualine/lualine.nvim")
	use("goolord/alpha-nvim")
	use("m4xshen/smartcolumn.nvim")
	use("xiyaowong/virtcolumn.nvim")

	-- Essential
	use("tpope/vim-surround")
	use("vim-scripts/ReplaceWithRegister")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.x",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")
	use("lewis6991/gitsigns.nvim")

	-- Auto Completion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- Snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- Language Server Configurations
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("jose-elias-alvarez/typescript.nvim")
	use("onsails/lspkind.nvim")

	-- Formatting & Linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- Commenting
	use("numToStr/Comment.nvim")

	-- Timer
	use("wakatime/vim-wakatime")

	-- Dependencies
	use("nvim-lua/plenary.nvim")
	use("williamboman/mason-lspconfig.nvim")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
