return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            rust = { "rustfmt" },
            go = { "gofmt", "goimports" },
            zig = { "zig" },
            solidity = { "forge_fmt" },

            kotlin = { "ktfmt" },
            gleam = { "gleam" },
            python = { "ruff_format", "ruff_fix" },

            lua = { "stylua" },
        },

        format_on_save = {
            timeout_ms = 1000,
            lsp_format = "fallback",
        },

        formatters = {
            ["google-java-format"] = {
                prepend_args = { "--aosp" },
            },
            ["ktfmt"] = {
                prepend_args = { "--kotlinlang-style" },
            },
        },
    },
}
