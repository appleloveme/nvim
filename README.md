# ALM-Style Neovim Configuration

学习交流用，仅供参考。

## TOC

<!-- MarkdownTOC GFM -->

- [版本](#版本)
- [依赖](#依赖)
- [安装](#安装)
- [目录结构](#目录结构)

<!-- /MarkdownTOC -->

## 版本

NVIM v0.3 及以上版本。

## 依赖

- Vim 插件管理器: https://github.com/junegunn/vim-plug
- 100+ Vim 插件
- python3、pip3、python2、pip2
- nvim python provider
  - `pip2 install --upgrade --user pynvim`
  - `pip3 install --upgrade --user pynvim`
- [Nerd Font 字体][Nerd Font]。推荐 [DejaVuSansMonoForPowerline Nerd Font][font]。然后修改你的终端的字体设置。

## 安装

```sh
git clone https://github.com/appleloveme/nvim ~/.config/nvim

# 执行 `nvim` 开始。
# 初次执行 `nvim` 会自动安装插件管理器和插件，会非常慢，请耐心等待。
nvim
```

## 目录结构

```
.
├── README.md
├── UltiSnips/         // snippets
│   └── all.snippets   // snippets for all files
├── abbreviations.vim
├── autocmds.vim
├── autoload/          // vim-plug
├── coc-settings.json  // coc.nvim configuration
├── color.vim          // color setting
├── colors/            // color themes
├── filetype.vim       // user-setting filetypes
├── functions.vim      // commands and functions
├── highlights.vim     // user-setting highlights
├── init.vim           // <= neovim configuration entry point
├── keys.vim           // keyboard maps
├── plugged/           // plugins
├── plugins-config.vim // plugin config
├── plugins.vim        // plugin list (vim-plug)
├── settings.vim       // neovim/vim settings
├── spell/             // spell check
└── temp/              // temporary files
    ├── session        // xolox/vim-session plugin
    ├── session_lock   // xolox/vim-session plugin
    └── undodir        // mbbill/undotree plugin
```


<!-- links -->

[font]: https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/DejaVuSansMono
[Nerd Font]: https://github.com/ryanoasis/nerd-fonts
