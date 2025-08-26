require("config.lazy")

vim.opt.number = true
vim.opt.relativenumber = true

vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Find keymaps" })
vim.keymap.set("n", "<leader>fd", builtin.lsp_document_symbols, { desc = "Find symbols" })
vim.keymap.set("n", "<leader>fm", builtin.marks, { desc = "Find marks" })

vim.keymap.set("n", "<leader>gb", builtin.git_branches, { desc = "View branches" })

vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>")

vim.diagnostic.config({
	virtual_text = {
		source = "always",
	},
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
