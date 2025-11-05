return {
    "folke/snacks.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    priority = 1000,
    lazy = false,

    ---@module 'snacks.nvim'
    ---@type snacks.Config
    opts = {
        bigfile = { enabled = true },
        dashboard = {
            enabled = true,
            sections = {
                { section = "header" },
                { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
                { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
                { section = "startup" },
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
    },

    keys = {
        {
            "<leader><space>",
            function()
                Snacks.picker.smart()
            end,
            desc = "Find File",
        },
        {
            "<leader>~",
            function()
                Snacks.explorer()
            end,
            desc = "Explorer",
        },
        {
            "<leader>/",
            function()
                Snacks.picker.grep()
            end,
            desc = "Grep",
        },
        {
            "<leader>%",
            function()
                Snacks.lazygit()
            end,
            desc = "Lazygit",
        },

        {
            "<leader>bl",
            function()
                Snacks.picker.buffers()
            end,
            desc = "List Buffers",
        },
        {
            "<leader>bx",
            function()
                Snacks.bufdelete()
            end,
            desc = "Exit Current Buffer",
        },
        {
            "<leader>bs",
            function()
                Snacks.scratch()
            end,
            desc = "Scratch Buffer",
        },
    },
}
