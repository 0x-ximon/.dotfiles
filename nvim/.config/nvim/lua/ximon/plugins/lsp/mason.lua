local status1, mason = pcall(require, "mason")
local status2, mason_lspconfig = pcall(require, "mason-lspconfig")
local status3, mason_null_ls = pcall(require, "mason-null-ls")

if not status1 then
	print("Mason is mad")
end
if not status2 then
	print("Mason config not working")
end
if not status3 then
	print("Mason null-ls isn't working")
end

mason.setup()

mason_lspconfig.setup({
	ensure_installed = {
		"tsserver",
		"pyright",
		"lua_ls",
		"rust_analyzer",
		"solc",
	},
})

mason_null_ls.setup({
	ensure_installed = {
		"prettier",
		"black",
		"stylua",
		"eslint_d",
		"gofumpt",
		"goimports",
	},
})
