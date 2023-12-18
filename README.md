# Neovim

## 安装

### MacOS

安装

```
brew install neovim
brew install jesseduffield/lazygit/lazygit

git clone https://github.com/FortyWinters/Neovim.git ~/.config/nvim
```

字体

```
brew tap homebrew/cask-fonts
brew install --cask font-fira-code-nerd-font
```

## 插件

-   barbar https://github.com/romgrk/barbar.nvim
-   catppuccin https://github.com/catppuccin/nvim
-   comment https://github.com/numToStr/Comment.nvim
-   flash https://github.com/folke/flash.nvim
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
-   toggleterm https://github.com/akinsho/toggleterm.nvim?tab=readme-ov-file
-   transparent-nvim https://github.com/xiyaowong/transparent.nvim
-   vim-highlightedyank https://github.com/machakann/vim-highlightedyank
-   vim-illuminate https://github.com/RRethy/vim-illuminate
-   which-key https://github.com/folke/which-key.nvim

## 快捷键

```
非插入模式
<Space>/    注释代码
s           查找

普通模式
<space>fk   查看快捷键
<space>fh   查看帮助
<space>ff   查找文件
<space>fg   查找字符
<space>fb   查找buf

<space>s<right> 右侧分屏
<space>s<down>  下方分屏

<space>dn   跳到下一个诊断
<space>dp   跳到上一个诊断

<space><left>   导航到左侧窗口
<space><right>  导航到右侧窗口
<space><up>     导航到上方窗口
<space><down>   导航到下方窗口
<space>k        展示文档
<space>b        跳转到函数定义

<space>e    打开/关闭文件树
<space>t    打开/关闭终端
<space>1    打开tab选择

视觉模式
<space>]    代码右移
<space>[    代码左移

终端模式
<esc>       退出终端模式

常用指令
:Lazy               插件管理
:LazyGit            git
:Mason              LSP管理
:MarkdownPreview    Markdown预览
```
