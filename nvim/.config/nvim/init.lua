require("ximon.plugins-setup")

-- Core Imports
require("ximon.core.options")
require("ximon.core.keymaps")
require("ximon.core.colorscheme")

-- Plugin Imports
require("ximon.plugins.treesitter")
require("ximon.plugins.neo-tree")
require("ximon.plugins.lualine")
require("ximon.plugins.comment")
require("ximon.plugins.telescope")
require("ximon.plugins.nvim-cmp")
require("ximon.plugins.autopairs")
require("ximon.plugins.gitsigns")
require("ximon.plugins.alpha")

-- LSP Imports
require("ximon.plugins.lsp.lspsaga")
require("ximon.plugins.lsp.lspconfig")
require("ximon.plugins.lsp.null-ls")
require("ximon.plugins.lsp.mason")
