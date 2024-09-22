local opt = vim.opt

-- 行号设置
opt.relativenumber = true
opt.number = true

-- 缩进设置
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- 超出显示范围自动换行
opt.wrap = false

-- 光标设置
opt.cursorline = true

-- 禁用鼠标
opt.mouse = ""

-- 启动系统剪切板
-- opt.clipboard:append("unnamedplus")

-- 新的视窗默认启动位置为右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索设置
opt.ignorecase = true
opt.smartcase = true

-- 外观
vim.o.background = "dark"
vim.o.termguicolors = true

-- 编码格式
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "UTF-8"
