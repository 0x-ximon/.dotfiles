local name = "snacks"
local ok, module = pcall(require, name)

if not ok then
    vim.notify(string.format("%s not found", name), vim.log.levels.WARN)
    return
end

module.setup({
    bigfile = { enabled = true },
    dashboard = {
        enabled = true,
        sections = {
            { section = "header" },
            { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
            { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
            -- { section = "startup" },
        },
    },
    input = { enabled = true },
    lazygit = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scratch = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
})

local f = function(fn)
    return function()
        fn()
    end
end

vim.keymap.set("n", "<leader><space>", f(module.picker.smart), { desc = "Find File" })
vim.keymap.set("n", "<leader>~", f(module.explorer), { desc = "Explorer" })
vim.keymap.set("n", "<leader>/", f(module.picker.grep), { desc = "Grep" })
vim.keymap.set("n", "<leader>%", f(module.lazygit), { desc = "Lazygit" })
vim.keymap.set("n", "<leader>bl", f(module.picker.buffers), { desc = "List Buffers" })
vim.keymap.set("n", "<leader>bx", f(module.bufdelete), { desc = "Exit Current Buffer" })
vim.keymap.set("n", "<leader>bs", f(module.scratch), { desc = "Scratch Buffer" })
