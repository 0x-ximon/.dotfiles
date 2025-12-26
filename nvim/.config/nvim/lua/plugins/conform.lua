return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            rust = { "rustfmt" },
            go = { "gofmt" },
            solidity = { "forge_fmt" },
            java = { "google-java-format" },
            typescript = { "biome" },
            lua = { "stylua" },
            json = { "biome" },
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_format = "fallback",
        },
        formatters = {
            ["google-java-format"] = {
                prepend_args = { "--aosp" },
            },
        },
    },
}
