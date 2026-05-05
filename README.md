# Neovim Config

个人使用的 Neovim 配置，基于 `lazy.nvim` 管理插件，补全由 `coc.nvim` 提供。

## Preview

主页面：
![image](https://github.com/user-attachments/assets/06b1e45e-ce9b-4f54-b745-25520408899d)

编辑页面：
![image](https://github.com/user-attachments/assets/83d4fc5c-111a-493f-80ca-ae6779275e86)
![image](https://github.com/user-attachments/assets/f54506b4-2d1d-4264-a5ba-59b626e0621d)

## Requirements

- Neovim `>= 0.12.0`
- Git
- Node.js `>= 20.19.0` for `coc.nvim`
- `ripgrep` for Telescope grep
- `xclip`, `xsel`, `wl-clipboard`, `pbcopy` 其中一种，用于系统剪切板
- `clangd` if you use C/C++
- `python3` if you use `coc-jedi`
- C compiler such as `gcc` or `clang` for Treesitter parsers

## Install

```bash
git clone https://github.com/<your-name>/<your-repo>.git ~/.config/nvim
nvim
```

首次启动会自动安装 `lazy.nvim` 和插件。

建议首次启动后执行一次：

```vim
:checkhealth
:TSUpdate
```

## Coc Extensions

会自动安装这些 `coc` 扩展：

- `coc-clangd`
- `coc-git`
- `coc-jedi`
- `coc-lua`
- `coc-marketplace`
- `coc-pairs`
- `coc-sh`

## Notes

- 插件版本由 `lazy-lock.json` 锁定，建议一并提交到仓库。
- 如果 `:checkhealth coc.nvim` 提示 Node 版本过低，先升级 Node 再启动 Neovim。
- Treesitter parser 会安装到 `stdpath("data")/treesitter`，避免写入插件目录导致权限问题。
