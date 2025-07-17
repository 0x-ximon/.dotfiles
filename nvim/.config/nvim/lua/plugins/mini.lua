return {
    "echasnovski/mini.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = false,

    config = function()
        require("mini.statusline").setup()
        require("mini.sessions").setup()
        require("mini.pairs").setup()
        require("mini.icons").setup()
        require("mini.diff").setup()
        require("mini.git").setup()
    end,
}
