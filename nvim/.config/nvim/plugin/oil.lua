local name = "oil"
local ok, module = pcall(require, name)

if not ok then
    vim.notify(string.format("%s not found", name), vim.log.levels.WARN)
    return
end

module.setup({
    default_file_explorer = true,
})

vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Oil Explore" })
