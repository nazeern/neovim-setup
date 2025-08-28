return {
	"folke/flash.nvim",
	event = "VeryLazy",
	---@diagnostic disable-next-line: undefined-doc-name
	---@type Flash.Config
	-- Extend the '/' find function
	opts = {
		modes = {
			search = {
				enabled = true,
			},
			char = {
				jump_labels = true,
			},
		},
	},
}
