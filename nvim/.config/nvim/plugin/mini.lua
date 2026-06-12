local mini_modules = {
    "mini.statusline",
    "mini.sessions",
    "mini.pairs",
    "mini.icons",
    "mini.diff",
    "mini.git",
}

for _, name in ipairs(mini_modules) do
    local ok, module = pcall(require, name)
    if not ok then
        vim.notify(string.format("%s not found", name), vim.log.levels.WARN)
        goto continue
    end

    module.setup()
    ::continue::
end
