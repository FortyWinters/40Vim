return {
	"catppuccin/nvim",
	lazy = false,
	priority = 999,
	config = function()
		require("catppuccin").setup({
      transparent_background = true,
    })
	  vim.cmd.colorscheme "catppuccin-Macchiato"
  end,
}
