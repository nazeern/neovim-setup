return {
	"folke/flash.nvim",
	event = "VeryLazy",
	---@type Flash.Config
	opts = {},
	-- stylua: ignore
	keys = {
		{ "n",     mode = { "n", "x", "o" }, function() require("flash").jump() end,       desc = "Flash" },
		{ "N",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
		{ "<c-s>", mode = { "c" },           function() require("flash").toggle() end,     desc = "Toggle Flash Search" },
	},
}
