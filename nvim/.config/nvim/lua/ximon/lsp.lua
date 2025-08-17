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
    "clangd",
    "rust_analyzer",
    "zls",
    "pyright",
    "ruff",
    "gopls",
    "roslyn",
    "solidity_ls_nomicfoundation",
})
