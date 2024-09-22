vim.g.mapleader = " "

local keymap = vim.keymap

---------------插入模式---------------
keymap.set("i", "jk", "<ESC>")

---------------视觉模式---------------
keymap.set("v", "J", ":m '>+1<CR>gv=gv") 
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

---------------正常模式---------------

---------------插件映射---------------
keymap.set("n", "<F2>", ":NvimTreeToggle<CR>")          --F2打开nvimTree
