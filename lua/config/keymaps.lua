local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Directory Navigation
-- keymap.set("n", "<leader>m", ":NvimTreeFocus", opts)
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Pane Navigation
keymap.set("n", "<leader><Left>", "<C-w>h", opts) -- Navigate Left
keymap.set("n", "<leader><Down>", "<C-w>j", opts) -- Navigate Down
keymap.set("n", "<leader><Up>", "<C-w>k", opts) -- Navigate Up
keymap.set("n", "<leader><Right>", "<C-w>l", opts) -- Navigate Right

-- Window Management
keymap.set("n", "<leader>s<Right>", ":vsplit<CR>", opts) -- Split Vertically
keymap.set("n", "<leader>s<Down>", ":split<CR>", opts) -- Split Horizontally

-- Indenting
keymap.set("v", "<leader>[", "<gv")
keymap.set("v", "<leader>]", ">gv")

-- Comments
vim.api.nvim_set_keymap("n", "<leader>/", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<leader>/", "gcc", { noremap = false })

-- Treminal
keymap.set("n", "<leader>t", ":ToggleTerm<CR>", opts)
keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)

-- TabPage
-- Move to previous/next
keymap.set("n", "<leader>,", ":BufferPrevious<CR>", opts)
keymap.set("n", "<leader>.", ":BufferNext<CR>", opts)
-- Re-order to previous/next
keymap.set("n", "<leader><", ":BufferMovePrevious<CR>", opts)
keymap.set("n", "<leader>>", ":BufferMoveNext<CR>", opts)
-- Goto buffer in position
keymap.set("n", "<leader>1", ":BufferPick<CR>", opts)
