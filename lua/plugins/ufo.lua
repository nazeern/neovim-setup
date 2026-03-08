return {
	"kevinhwang91/nvim-ufo",
	dependencies = { "kevinhwang91/promise-async" },
	event = { "BufReadPost" },
	opts = {
		provider_selector = function(bufnr, filetype, buftype)
			-- Use LSP as the primary provider, fallback to treesitter, then indent
			return { "lsp", "indent" }
		end,
	},
	config = function(_, opts)
		-- Folding options required by nvim-ufo
		vim.o.foldcolumn = "0" -- '0' is also an option if you don't want the column
		vim.o.foldlevel = 99 -- keep most folds open by default
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true

		-- Keymaps
		vim.keymap.set("n", "<leader><leader>", 'za')

		require("ufo").setup(opts)
	end,
}
