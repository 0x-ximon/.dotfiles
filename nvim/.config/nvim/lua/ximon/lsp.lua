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
vim.lsp.enable("solidity_ls_nomicfoundation")

vim.lsp.config("kotlin_lsp", {})
vim.lsp.config("sourcekit", { filetypes = { "swift", "objc", "objcpp" } })
vim.lsp.config("ty", {})
vim.lsp.config("lua_ls", {})

vim.lsp.config("harper_ls", { filetypes = { "markdown" } })
vim.lsp.config("markdown_oxide", {})

vim.lsp.enable({
    "rust_analyzer",
    "gopls",
    "zls",
    "solidity_ls_nomicfoundation",

    "kotlin_lsp",
    "sourcekit",
    "ty",
    "lua_ls",

    "harper_ls",
    "markdown_oxide",
})
