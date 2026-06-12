local name = "blink.cmp"
local ok, module = pcall(require, name)

if not ok then
    vim.notify(string.format("%s not found", name), vim.log.levels.WARN)
    return
end

module.build():pwait()

module.setup({
    keymap = { preset = "enter" },
    appearance = {
        nerd_font_variant = "mono",
    },
    completion = { documentation = { auto_show = true } },
    sources = {
        default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
    signature = { enabled = true },
})
