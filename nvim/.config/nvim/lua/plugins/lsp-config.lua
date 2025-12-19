return {
    "neovim/nvim-lspconfig",
    dependencies = {
        {
            "mason-org/mason.nvim",
            opts = {
                registries = {
                    "github:mason-org/mason-registry",
                    "github:Crashdummyy/mason-registry",
                },
            },
        },
        {
            "mason-org/mason-lspconfig.nvim",
            opts = {
                ensure_installed = {
                    "rust_analyzer",
                    "gopls",
                    "zls",
                    "clangd",
                    "solidity_ls_nomicfoundation",
                    "jdtls",
                    "ts_ls",
                    "denols",
                    "ruff",
                    "lua_ls",
                    "markdown_oxide",
                    "harper_ls",
                },
            },
        },
        {
            "folke/lazydev.nvim",
            ft = "lua",
            opts = {
                library = {
                    -- Load luvit types when the `vim.uv` word is found
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },
    },
}
