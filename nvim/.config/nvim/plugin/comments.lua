local name = "todo-comments"
local ok, module = pcall(require, name)

if not ok then
    vim.notify(string.format("%s not found", name), vim.log.levels.WARN)
    return
end

module.setup({
    keywords = {
        TODO = { icon = " ", color = "info" },
        BUG = { icon = " ", color = "error" },
        WARN = { icon = " ", color = "warning" },
        INFO = { icon = " ", color = "hint" },
        TEST = { icon = "⏲ ", color = "test" },
        PERF = { icon = " ", color = "default" },
    },
    colors = {
        info = { "#2563EB" },
        error = { "#DC2626" },
        warning = { "#FBBF24" },
        hint = { "#10B981" },
        test = { "#FF00FF" },
        default = { "#7C3AED" },
    },
})
