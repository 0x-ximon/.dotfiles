local gh = function(repo)
    return "https://github.com/" .. repo
end

vim.pack.add({
    { src = gh("nvim-mini/mini.nvim") },
    { src = gh("folke/snacks.nvim") },
    { src = gh("saghen/blink.lib") },
    { src = gh("saghen/blink.cmp") },
    { src = gh("stevearc/oil.nvim") },
    { src = gh("stevearc/conform.nvim") },
    { src = gh("mason-org/mason.nvim") },
    { src = gh("neovim/nvim-lspconfig") },
    { src = gh("folke/lazy.nvim") },
    { src = gh("folke/lazydev.nvim") },
    { src = gh("folke/which-key.nvim") },
    { src = gh("folke/todo-comments.nvim") },
    { src = gh("nvim-lua/plenary.nvim") },
    { src = gh("0x-ximon/acario.nvim") },
    { src = gh("f-person/auto-dark-mode.nvim") },
    { src = gh("wakatime/vim-wakatime") },
    { src = gh("nvim-treesitter/nvim-treesitter"), version = "main" },
})
