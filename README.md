# Neovim

## 安装

### MacOS

```
git clone https://github.com/FortyWinters/Neovim.git ~/.config/nvim

brew install neovim
brew tap homebrew/cask-fonts
brew install --cask font-fira-code-nerd-font
brew install jesseduffield/lazygit/lazygit

// brew install ripgrep
// brew install go
```

### Ubuntu

```
git clone https://github.com/FortyWinters/Neovim.git ~/.config/nvim
sh ~/.config/nvim/script/install_ubuntu.sh
```

## 插件

-   alpha-nvim https://github.com/goolord/alpha-nvim
-   catppuccin https://github.com/catppuccin/nvim
-   comment https://github.com/numToStr/Comment.nvim
-   gitsigns https://github.com/lewis6991/gitsigns.nvim
-   indent-blankline https://github.com/lukas-reineke/indent-blankline.nvim
-   lazygit https://github.com/kdheepak/lazygit.nvim
-   lualine-nvim https://github.com/nvim-lualine/lualine.nvim
-   lspsaga-nvim https://github.com/nvimdev/lspsaga.nvim
-   mason https://github.com/williamboman/mason.nvim
-   markdown-preview https://github.com/iamcco/markdown-preview.nvim
-   noice https://github.com/folke/noice.nvim
-   nvim-cmp https://github.com/hrsh7th/nvim-cmp
-   nvim-tree https://github.com/nvim-tree/nvim-tree.lua
-   nvim-treesitter https://github.com/nvim-treesitter/nvim-treesitter
-   nvim-ts-autotag https://github.com/windwp/nvim-ts-autotag
-   nvim-web-devicons https://github.com/nvim-tree/nvim-web-devicons
-   telescope https://github.com/nvim-telescope/telescope.nvim
-   transparent-nvim https://github.com/xiyaowong/transparent.nvim
-   toggleterm https://github.com/akinsho/toggleterm.nvim?tab=readme-ov-file
-   vim-highlightedyank https://github.com/machakann/vim-highlightedyank
-   vim-illuminate https://github.com/RRethy/vim-illuminate
-   which-key https://github.com/folke/which-key.nvim

## 快捷键

```
非插入模式
<Space>/    注释代码
<Ctrl>s     快速选中

普通模式
<Space>fk   查看快捷键
<Space>fh   查看帮助
<Space>ff   查找文件
<Space>fg   查找字符
<Space>fb   查找buf
<Space>b    跳转到函数定义
<Space>dn   跳到下一个诊断
<Space>dp   跳到上一个诊断
<Space>e    打开/关闭文件树
<Space>h    导航到左侧窗口
<Space>l    导航到右侧窗口
<Space>k    导航到上方窗口
<Space>j    导航到下方窗口
<Space>k    展示文档
<Space>sl   右侧分屏
<Space>sj   下方分屏
<Space>t    打开/关闭终端
<Space>g    打开/关闭lazygit

视觉模式
<Space>]    代码右移
<Space>[    代码左移

终端模式
[Esc]       退出终端模式
```
