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

vim.lsp.config("rust_analyzer", {})
vim.lsp.config("gopls", {})
vim.lsp.config("zls", {})
vim.lsp.config("ols", {})

vim.lsp.config("ty", {})
vim.lsp.config("kotlin_lsp", {})
vim.lsp.config("sourcekit", { filetypes = { "swift", "objc", "objcpp" } })

-- General LSPs
vim.lsp.config("harper_ls", { filetypes = { "markdown", "org" } })

vim.lsp.enable({
    "rust_analyzer",
    "gopls",
    "zls",
    "ols",

    "ty",
    "kotlin_lsp",
    "sourcekit",

    "harper_ls",
})
