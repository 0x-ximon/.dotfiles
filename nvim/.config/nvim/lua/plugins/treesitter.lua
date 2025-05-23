return {
  "nvim-treesitter/nvim-treesitter",
  main = 'nvim-treesitter.configs',
  build = ':TSUpdate',

  -- This section is copied from LazyVim
  lazy = vim.fn.argc(-1) == 0, -- load treesitter early when opening a file from the cmdline
  init = function(plugin)
      require("lazy.core.loader").add_to_rtp(plugin)
      require("nvim-treesitter.query_predicates")
  end,

  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
      "bash",
      "c",
      "diff",
      "go",
      "html",
      "javascript",
      "json",
      "lua",
      "luadoc",
      "markdown",
      "markdown_inline",
      "python",
      "rust",
      "solidity",
      "toml",
      "typescript",
    }
  }
}
