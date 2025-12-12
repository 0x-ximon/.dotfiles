return {
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
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
        },
    },

    {
        "wakatime/vim-wakatime",
        lazy = false,
    },

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            icons = { mappings = false },
        },
    },

    {

        "stevearc/oil.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        lazy = false,
        opts = {
            default_file_explorer = false,
        },
        keys = {
            {
                "-",
                "<cmd>Oil<CR>",
                desc = "Oil Explore",
            },
        },
    },
    {
        "mikavilpas/yazi.nvim",
        version = "*",
        event = "VeryLazy",
        dependencies = { { "nvim-lua/plenary.nvim", lazy = true } },
        opts = {
            open_for_directories = true,
        },
        keys = {
            {
                "<leader>=",
                "<cmd>Yazi<cr>",
                desc = "Yazi Explore",
            },
        },
        init = function()
            vim.g.loaded_netrwPlugin = 1
        end,
    },

    {
        "f-person/auto-dark-mode.nvim",
        opts = {
            set_dark_mode = function()
                vim.api.nvim_set_option_value("background", "dark", {})
                vim.cmd("colorscheme github_dark_default")
            end,
            set_light_mode = function()
                vim.api.nvim_set_option_value("background", "light", {})
                vim.cmd("colorscheme github_light_default")
            end,
        },
    },
}
