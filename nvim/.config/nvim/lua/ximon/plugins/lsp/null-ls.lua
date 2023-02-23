local status, null_ls = pcall(require, "null-ls")
if not status then
	print("Null-ls is kinda insane")
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	sources = {
		formatting.prettier,
		formatting.black.with({
			extra_args = { "--line-length", "79" },
		}),
		formatting.rustfmt,
		formatting.stylua,
		formatting.clang_format,
		formatting.gofumpt,
		formatting.goimports,

		diagnostics.eslint_d.with({
			condition = function(utils)
				return utils.root_has_file(".eslintrc.js")
			end,
		}),
		diagnostics.pylint.with({
			condition = function(utils)
				return utils.root_has_file(".pylintrc")
			end,
			diagnostics_postprocess = function(diagnostic)
				diagnostic.code = diagnostic.message_id
			end,
		}),
	},

	on_attach = function(current_client, bufnr)
		if current_client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })

			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,

				callback = function()
					vim.lsp.buf.format({
						filter = function(client)
							return client.name == "null-ls"
						end,
						bufnr = bufnr,
					})
				end,
			})
		end
	end,
})
