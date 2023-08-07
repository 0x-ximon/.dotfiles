local status, null_ls = pcall(require, "null-ls")
if not status then
	print("Null-ls is kinda insane")
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	sources = {
		formatting.prettier.with({
			-- Don't forget to install the "prettier-plugin-solidity".
			extra_filetypes = { "solidity" },
		}),
		formatting.black.with({
			extra_args = { "--line-length", "80" },
		}),
		formatting.rustfmt,
		formatting.stylua,
		formatting.clang_format,
		formatting.gofumpt,
		formatting.goimports,
		formatting.sqlfluff.with({
			extra_args = { "--dialect", "postgres" },
		}),
		formatting.sqlfmt,
		formatting.dart_format,

		diagnostics.eslint_d.with({
			condition = function(utils)
				return utils.root_has_file(".eslintrc.js")
			end,
		}),
		diagnostics.mypy,
		diagnostics.ruff,
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
