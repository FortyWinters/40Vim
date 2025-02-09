local config = function()
	vim.cmd([[hi NvimTreeNomal guibg=NONE ctermbg=NONE]])
	require("nvim-tree").setup({
		filters = {
			dotfiles = false,
		},
		view = {
			adaptive_size = true,
		},
	})
end

return {
	"nvim-tree/nvim-tree.lua",
	config = config
}
