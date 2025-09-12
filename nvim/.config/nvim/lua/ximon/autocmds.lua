vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "python",
        "typescript",
        "rust",
        "go",
        "java",
        "cpp",
        "zig",
        "sql",
        "assembly",
        "c",
        "gleam",
        "solidity",
        "haskell",
        "c_sharp",
    },
    callback = function()
        vim.treesitter.start()
    end,
})

-- Highlight yanked text briefly after any yank operation.
-- This autocmd uses the built-in highlight-on-yank function for visual feedback,
-- making it easier to see what was just copied.
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("ximon.highlight", { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})

-- Set up LSP-related keymaps and features when an LSP client attaches to a buffer.
-- This autocmd dynamically assigns keymaps based on the capabilities of the attached LSP client.
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("ximon.lsp.attach", {}),
    callback = function(args)
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

        -- Set keymaps for LSP features if supported by the client
        if client:supports_method("textDocument/hover") then
            vim.keymap.set("n", "?", vim.lsp.buf.hover, { desc = "Hover" })
            vim.keymap.set("n", "$", vim.diagnostic.open_float, { desc = "Diagnostic" })
        end
        if client:supports_method("textDocument/definition") then
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
        end
        if client:supports_method("textDocument/declaration") then
            vim.keymap.set("n", "ge", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
        end
        if client:supports_method("textDocument/references") then
            vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Goto References" })
        end
        if client:supports_method("textDocument/implementation") then
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Goto Implementation" })
        end
        if client:supports_method("textDocument/typeDefinition") then
            vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { desc = "Goto Type" })
        end
        if client:supports_method("textDocument/codeAction") then
            vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { desc = "LSP Actions" })
        end
        if client:supports_method("textDocument/formatting") then
            vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "LSP Format" })
        end
        if client:supports_method("textDocument/rename") then
            vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "LSP Rename" })
        end
    end,
})

-- Clean up LSP-related autocmds and keymaps when an LSP client detaches from a buffer.
vim.api.nvim_create_autocmd("LspDetach", {
    group = vim.api.nvim_create_augroup("ximon.lsp.detach", { clear = true }),
    callback = function(args)
        vim.api.nvim_clear_autocmds({ group = "ximon.lsp.attach", buffer = args.buf })
    end,
})
