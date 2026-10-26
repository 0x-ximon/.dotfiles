local name = "nvim-treesitter"
local ok, module = pcall(require, name)

if not ok then
    vim.notify(string.format("%s not found", name), vim.log.levels.WARN)
    return
end

module.install({
    -- Neovim languages
    "rust",
    "go",
    "zig",
    "odin",
    "sql",
    "kotlin",
    "swift",
    "python",
    "lua",

    -- Emacs languages
    "c",
    "cpp",
    "c_sharp",
    "c3",
    "asm",
    "nasm",
    "java",
    "haskell",
    "typescript",
    "tsx",
    "solidity",
    "commonlisp",

    -- General
    "markdown",
    "markdown_inline",
    "vim",
    "vimdoc",
    "query",
    "just",
})

vim.api.nvim_create_autocmd("FileType", {
    group = vim.api.nvim_create_augroup("ximon.treesitter", { clear = true }),
    callback = function(args)
        pcall(vim.treesitter.start, args.buf)
    end,

    pattern = {
        -- Neovim languages
        "rust",
        "go",
        "gomod",
        "zig",
        "odin",
        "sql",
        "kotlin",
        "swift",
        "python",
        "lua",

        -- Emacs languages
        "c",
        "cpp",
        "cs",
        "c3",
        "asm",
        "nasm",
        "java",
        "haskell",
        "typescript",
        "typescriptreact",
        "solidity",
        "lisp",

        -- General
        "markdown",
        "vim",
        "just",
    },
})
