return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "ruff" },
            cpp = { "clang-format" },
            go = { "goimports", "gofmt" },
            rust = { "rustfmt", lsp_format = "fallback" },
            typescript = { "deno_fmt", "prettierd", "prettier", stop_after_first = true },
            json = { "deno_fmt", "prettierd", "prettier", stop_after_first = true },
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_format = "fallback",
        },
    },
}
