vim.lsp.config("*", {
    capabilities = {
        textDocument = {
            semanticTokens = {
                multilineTokenSupport = true,
            },
        },
    },

    root_markers = { ".git" },
})

vim.lsp.enable({
    "lua_ls",
    "ts_ls",
    "denols",
    "clangd",
    "rust_analyzer",
    "zls",
    "pyright",
    "ruff",
    "gopls",
    "solidity_ls",
})
