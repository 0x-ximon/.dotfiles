local status, conform = pcall(require, "conform")

if not status then
	print("Conform has irregular form")
end

-- Conform will run multiple formatters sequentially
-- Use a sub-list to run only the first available formatter

conform.setup({
	formatters_by_ft = {
		javascript = { "prettier" },
		typescript = { "prettier" },
		markdown = { "prettier" },
		json = { "prettier" },

		go = { "goimports", "gofumpt" },
		sql = { "sql_formatter" },
		cpp = { "clang_format" },
		dart = { "dart_format" },
		bash = { "beautysh" },
		python = { "ruff" },
		rust = { "rustfmt" },
		lua = { "stylua" },
		elixir = { "mix" },
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 10000,
		lsp_fallback = true,
	},
})
