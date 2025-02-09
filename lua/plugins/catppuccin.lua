local config = function()
    require("catppuccin").setup({
        transparent_background = true,
        intergrations = {
            cmp = true,
            gitsigns = true,
            nvimtree = true,
            treesister = true,
        }
    })
    vim.cmd.colorscheme "catppuccin-Frappe"
end

return {
    "catppuccin/nvim",
    lazy = false,
    priority = 999,
    config = config,
}
