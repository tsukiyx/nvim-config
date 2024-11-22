return { {
	'stevearc/conform.nvim',
	config = function()
		require("conform").setup({
			format_on_save = { timeout_ms = 500, lsp_format = "fallback" },
			formatters_by_ft = {
				lua = { "lua-format" },
				rust = { "rustfmt", lsp_format = "fallback" },
				javascript = { "prettier", stop_after_first = true },
				typescript = { "prettier" },
				typescriptreact = { "prettier" },
				javascriptreact = { "prettier" },
				vue = { "prettier" } -- Añadido soporte para Vue
			}

		})
	end,
	opts = {}
}
}
