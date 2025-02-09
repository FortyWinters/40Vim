local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Directory Navigation
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap.set("n", "<leader>r", ":NvimTreeFocus<CR>", opts)

-- Comments
vim.api.nvim_set_keymap("n", "<leader>/", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<leader>/", "gcc", { noremap = false })

-- Tab Page
keymap.set("n", "<leader><tab>", ":BufferPick<CR>", opts)
keymap.set("n", "<leader>w", ":BufferPickDelete<CR>", opts)

-- Pane Navigation
keymap.set("n", "<leader><Left>", "<C-w>h", opts)  -- Navigate Left
keymap.set("n", "<leader><Down>", "<C-w>j", opts)  -- Navigate Down
keymap.set("n", "<leader><Up>", "<C-w>k", opts)    -- Navigate Up
keymap.set("n", "<leader><Right>", "<C-w>l", opts) -- Navigate Right

-- Window Management
keymap.set("n", "<leader>s<Right>", ":vsplit<CR>", opts) -- Split Vertically
keymap.set("n", "<leader>s<Down>", ":split<CR>", opts)   -- Split Horizontally

-- Dashboard
keymap.set("n", "<leader>h", ":Alpha<CR>", opts)

-- Lazygit
keymap.set("n", "<leader>g", ":LazyGit<CR>", opts)
