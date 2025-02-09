local config = function()
	require("ibl").setup({
		exclude = {
			filetype = {
				"dashboard",
			},
		},
	})
end

return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	conifg = config,
}
