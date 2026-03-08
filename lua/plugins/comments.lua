return {
	"numToStr/Comment.nvim",
	opts = {
		mappings = false,
		opleader = {
			line = "gc",
		},
	},
	config = function()
		vim.keymap.set("n", "<leader>/", "gcc", { remap = true })
		vim.keymap.set("v", "<leader>/", "gc", { remap = true })
	end,
}
