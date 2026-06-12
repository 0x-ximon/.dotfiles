local name = "mason"
local ok, module = pcall(require, name)

if not ok then
    vim.notify(string.format("%s not found", name), vim.log.levels.WARN)
    return
end

module.setup({
    registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
    },
})
