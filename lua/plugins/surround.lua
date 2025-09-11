return {
	{
		"echasnovski/mini.surround",
		version = false,
		config = function()
			require("mini.surround").setup()
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			local npairs = require("nvim-autopairs")
			npairs.setup({
				enable_check_bracket_line = false,
			})
		end,
		opts = {},
	},
	"windwp/nvim-ts-autotag",
}
