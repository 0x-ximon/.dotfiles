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

vim.lsp.config("lua_ls", {})
vim.lsp.config("gopls", {})
vim.lsp.config("zls", {})
vim.lsp.config("dartls", {})
vim.lsp.config("rust_analyzer", {})
vim.lsp.config("markdown_oxide", {})
vim.lsp.config("solidity_ls_nomicfoundation", {})

vim.lsp.config("denols", { root_markers = { "deno.json", "deno.jsonc" } })
vim.lsp.config("jdtls", { settings = { java = { format = { enabled = true } } } })
vim.lsp.config("ts_ls", { root_markers = { "package.json" }, single_file_support = false })

vim.lsp.enable({
    "rust_analyzer",
    "gopls",
    "zls",
    "dartls",

    "jdtls",
    "solidity_ls_nomicfoundation",
    "ts_ls",
    "denols",

    "lua_ls",
    "markdown_oxide",
})
