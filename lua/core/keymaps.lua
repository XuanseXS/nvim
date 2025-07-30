vim.g.mapleader = " "

local keymap = vim.keymap

---------------插入模式---------------
keymap.set("i", "jk", "<ESC>")

---------------视觉模式---------------
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

---------------正常模式---------------
keymap.set("n", "<leader>p", "\"0p")
keymap.set("n", "<leader>P", "\"0P")

---------------插件映射---------------
keymap.set("n", "<F2>", "<cmd>Neotree toggle<CR>")          --F2打开nvimTree

-- bufferline 左右Tab切换
keymap.set("n", "<C-h>", "<cmd>BufferLineCyclePrev<CR>")
keymap.set("n", "<C-l>", "<cmd>BufferLineCycleNext<CR>")

