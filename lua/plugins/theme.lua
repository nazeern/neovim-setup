return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			vim.opt.termguicolors = true
			vim.cmd([[colorscheme tokyonight-storm]])
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.opt.termguicolors = true
			-- vim.cmd.colorscheme("catppuccin")
		end,
	},
}
