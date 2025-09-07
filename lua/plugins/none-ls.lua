return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		local b = null_ls.builtins

		null_ls.setup({
			sources = {
				b.formatting.stylua,
				b.formatting.prettierd,
				b.diagnostics.eslint_d,
			},
			filetypes = {
				"typescript",
				"css",
				"html",
				"svelte",
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
