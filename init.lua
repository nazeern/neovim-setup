require("config.lazy")

vim.opt.number = true
vim.opt.relativenumber = true
vim.o.clipboard = "unnamedplus"

-- Deleting shouldn't yank
vim.keymap.set("n", "dd", '"_dd')

vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set lazyredraw")

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
vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Show recent files" })
vim.keymap.set("n", "gr", builtin.lsp_references, { nowait = true, desc = "Show references under cursor" })

vim.keymap.set("n", "<leader>e", "<Cmd>Neotree<CR>")

-- Use Shift to move up and down faster
vim.keymap.set("n", "J", "10j", {})
vim.keymap.set("n", "K", "10k", {})

-- Copy relative path to clipboard
vim.keymap.set("n", "<leader>cr", function()
	local root = vim.fn.getcwd(-1, 0) -- Buffer's local CWD (root)
	local abs_path = vim.fn.expand("%:p") -- Absolute path to file
	local rel_path = vim.fn.fnamemodify(abs_path, ":." .. root)
	vim.fn.setreg("+", rel_path)
	vim.notify("Copied project‑relative path: " .. rel_path, vim.log.levels.INFO)
end, { desc = "Copy project-relative path to clipboard" })

vim.diagnostic.config({
	virtual_text = {
		source = "hover",
	},
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
-- Open a floating window with diagnostics on the current line
vim.keymap.set("n", "<leader>d", function()
	vim.diagnostic.open_float({ border = "rounded" })
end, { desc = "Show diagnostics" })
