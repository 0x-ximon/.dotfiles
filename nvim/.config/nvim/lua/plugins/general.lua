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
        lazy = false,
        opts = {
            default_file_explorer = true,
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
        "blazkowolf/gruber-darker.nvim",
        name = "gruber-darker",
        lazy = false,
        priority = 1000,
    },
    --  TODO:: Eventually remove this theme
    {
        "projekt0n/github-nvim-theme",
        name = "github-theme",
        lazy = false,
        priority = 1000,
        config = function()
            require("github-theme").setup({
                options = {
                    transparent = false,
                    darken = {
                        floats = true,
                    },
                },
            })

            vim.cmd("colorscheme github_light_default")
        end,
    },
    {
        -- "0x-ximon/acario.nvim",
        name = "acario",
        lazy = false,
        priority = 1000,
    },

    {
        "f-person/auto-dark-mode.nvim",
        opts = {
            set_dark_mode = function()
                vim.api.nvim_set_option_value("background", "dark", {})
                vim.cmd("colorscheme acario_dark")
            end,
            set_light_mode = function()
                vim.api.nvim_set_option_value("background", "light", {})
                vim.cmd("colorscheme acario_light")
            end,
        },
    },
}
