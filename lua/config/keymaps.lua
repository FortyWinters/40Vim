local keymap = vim.keymap

local opts = { noremap = true, silent = true }

-- Directory Navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus", opts)
keymap.set("n", "<leader>e", ":NvimTreeToggle", opts)

-- Pane Navigation
keymap.set("n", "<leader>h", "<C-w>h", opts) -- Navigate Left
keymap.set("n", "<leader>j", "<C-w>j", opts) -- Navigate Down
keymap.set("n", "<leader>k", "<C-w>k", opts) -- Navigate Up
keymap.set("n", "<leader>l", "<C-w>l", opts) -- Navigate Right

-- Window Management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split Vertically
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split Horizontally

-- Indenting
keymap.set("v", "<leader>[", "<gv")
keymap.set("v", "<leader>]", ">gv")

-- Comments
vim.api.nvim_set_keymap("n", "<leader>/", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<leader>/", "gcc", { noremap = false })
