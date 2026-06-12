local name = "conform"
local ok, module = pcall(require, name)

if not ok then
    vim.notify(string.format("%s not found", name), vim.log.levels.WARN)
    return
end

module.setup({
    formatters_by_ft = {
        rust = { "rustfmt" },
        go = { "gofmt", "goimports" },
        zig = { "zig" },
        solidity = { "forge_fmt" },

        kotlin = { "ktfmt" },
        swift = { "swift-format" },
        python = { "ruff_format", "ruff_fix" },
        lua = { "stylua" },

        markdown = { "prettierd" },
    },

    formatters = {
        ["ktfmt"] = {
            prepend_args = { "--kotlinlang-style" },
        },
    },

    format_on_save = {
        timeout_ms = 1000,
        lsp_format = "fallback",
    },
})
