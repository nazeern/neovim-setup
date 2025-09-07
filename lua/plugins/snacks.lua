return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		gitbrowse = {
			enabled = true,
			what = "permalink",
		},
		terminal = {
			enabled = true,
		},
		scroll = {
			enabled = true,
		},
	},
	keys = {
		{
			"<leader>gb",
			function()
				Snacks.gitbrowse()
			end,
			desc = "Git Browse",
			mode = { "n", "v" },
		},
		{
			"<C-\\>",
			function()
				Snacks.terminal("zsh")
			end,
			desc = "Toggle Terminal",
			mode = { "n", "t", "v" },
		},
	},
}
