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
vim.lsp.config("gleam", {})
vim.lsp.config("ty", {})
vim.lsp.config("lua_ls", {})

vim.lsp.enable({
    "rust_analyzer",
    "gopls",
    "zls",
    "solidity_ls_nomicfoundation",

    "kotlin_lsp",
    "gleam",
    "ty",
    "lua_ls",

    "markdown_oxide",
})
