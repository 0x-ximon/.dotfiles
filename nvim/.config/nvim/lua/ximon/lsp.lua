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
    "rust_analyzer",
    "gopls",
    "zls",
    "solidity_ls_nomicfoundation",

    "ts_ls",
    "jdtls",

    "lua_ls",
    "markdown_oxide",
})
