local opt = vim.opt
local fn = vim.fn

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

-- 启用鼠标
opt.mouse = "a"

-- 系统存在剪切板 provider 时再启用 unnamedplus
local has_clipboard_provider = vim.g.clipboard ~= nil
    or vim.fn.has("win32") == 1
    or vim.fn.has("wsl") == 1
    or fn.executable("pbcopy") == 1
    or fn.executable("wl-copy") == 1
    or fn.executable("xclip") == 1
    or fn.executable("xsel") == 1

if has_clipboard_provider then
    opt.clipboard:append("unnamedplus")
end

-- 新的视窗默认启动位置为右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索设置
opt.ignorecase = true
opt.smartcase = true

-- 设置文件换行符优先级
opt.fileformats = {"unix", "dos"}

-- 外观
vim.o.background = "dark"
vim.o.termguicolors = true

-- 编码格式
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "UTF-8"
