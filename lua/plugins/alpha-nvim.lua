local config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    local logo = [[
⠀⠀⠀⠀⠀⠀⠀⠀⣠⣦⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣶⣶⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣸⣟⣯⣿⣽⢷⣦⣀⣤⣤⣤⣤⣀⣠⣾⣻⣯⣷⡿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢠⣿⣯⣿⣾⡾⣟⣿⣽⣿⣽⣾⣟⣟⣯⣿⣽⡷⣟⣿⣻⣧⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀
⠀⠀⠀⠀⠀⢀⣸⣷⢿⡾⣷⡿⣿⢷⡿⣾⣷⢿⡾⣟⣯⣷⣿⣻⣟⣯⣿⣽⣧⡄⠀⠀⠀⠀⢀⣾⣟⣿⣆⠀⠀
⠀⠀⠀⢀⣴⣿⣟⣿⣻⣟⣯⣿⣟⡿⠟⠉⠘⠿⢿⣟⣿⣽⡾⣿⣽⣟⣷⡿⣽⣿⣶⠀⡀⡀⣸⣯⣿⣽⡇⠀⠀
⠀⠀⢠⡾⠁⠉⠛⠙⠛⠛⠛⠙⠉⠀⠀⠀⠀⠀⠀⠉⠙⠛⠻⠿⠾⠿⠷⠟⠛⠉⠘⣧⠉⠙⠛⢷⣿⠏⠀⠀⠀
⠀⠀⣾⠀⠀⠀⠀⠀⠀⠀⠤⠀⠀⠀⠀⠀⠀⠀⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠀⠀⠀⠀⠙⣷⡀⠀⠀
⠀⠨⡇⠀⠀⠀⠀⠀⠀⣀⣄⡀⠀⠀⠀⠀⠀⠀⢀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣷⠀⠀
⠀⠨⡇⠀⠀⠀⣀⡀⣐⣿⣀⣿⠄⠀⠀⠀⠀⠀⣿⣉⣽⡄⢀⢀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⠄⠀
⠀⠈⣿⠀⠠⣷⡳⣝⣼⠙⠾⠊⠀⠀⠀⠀⠀⠀⠙⠷⠛⢴⣳⢯⣞⡮⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡁⠀
⠀⠀⠘⣦⠀⠁⠋⠊⠈⠀⠀⠀⠀⠰⡼⢧⡤⠀⠀⠀⠀⠁⠋⠫⠚⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡿⠀⠀
⠀⠀⠀⠉⠷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠐⠒⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠖⣆⡀⠀⠈⣙⡆⠀
⠀⠀⠀⠀⠀⠉⠛⢶⣤⣤⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣄⣄⣤⣠⠴⠎⠉⠙⠋⠉⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠋⠙⠉⠛⠛⠛⠛⠋⠋⠋⠙⠉⠉⠉⠈⠉⠈⠁⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ]]

    dashboard.section.header.val = vim.split(logo, "\n")
    dashboard.section.header.opts.hl = "AlphaHeaderBlue"
    vim.api.nvim_set_hl(0, "AlphaHeaderBlue", { fg = "#4e9bc2", bold = true })

    dashboard.opts.layout = {
        { type = "padding", val = 8 },
        dashboard.section.header,
        { type = "padding", val = 2 },
        dashboard.section.buttons,
        { type = "padding", val = 1 },
        dashboard.section.footer,
    }

    dashboard.section.buttons.val = {
        dashboard.button('f', '  Find File', ':Telescope find_files<CR>'),
        dashboard.button('g', '  Find Text', ':Telescope live_grep<CR>'),
        dashboard.button('l', '󰒲  Lazy', ':Lazy<CR>'),
        dashboard.button("m", "  Mason", ":Mason<CR>"),
        dashboard.button('q', '  Quit', ':qa<CR>'),
    }

    alpha.setup(dashboard.opts)

    vim.cmd [[
          autocmd FileType alpha setlocal nofoldenable
      ]]
end

return {
    'goolord/alpha-nvim',
    config = config,
}
