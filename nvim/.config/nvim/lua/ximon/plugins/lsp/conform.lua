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
		solidity = { "prettier" },

		python = { "black" },
		rust = { "rustfmt" },
		lua = { "stylua" },
		cpp = { "clang_format" },
		go = { "goimports", "gofumpt" },
		sql = { "sql_formatter" },
		dart = { "dart_format" },
		elixir = { "mix" },
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_fallback = true,
	},
})
