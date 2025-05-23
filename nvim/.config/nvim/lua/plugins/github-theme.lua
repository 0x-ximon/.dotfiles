return {
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
}
