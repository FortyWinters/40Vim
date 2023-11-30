local keymap = vim.keymap

-- Directory Navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus", { noremap = true, silent = true })
keymap.set("n", "<leader>e", ":NvimTreeToggle", { noremap =true, silent = true })
