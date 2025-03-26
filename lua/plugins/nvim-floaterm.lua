return {
    'voldikss/vim-floaterm',
    lazy = true, -- 按需加载
    keys = {
        { "<leader>tt", ":FloatermToggle<CR>", mode = "n", desc = "Toggle Floaterm" },
        { "<leader>tn", ":FloatermNext<CR>",  mode = "n", desc = "Next Floaterm" },
        { "<leader>tp", ":FloatermPrev<CR>",  mode = "n", desc = "Previous Floaterm" },
    },
    opts = {
    },
    config = function()
        -- Floaterm 配置
        vim.g.floaterm_width = 0.8 -- 宽度占比 (相对于窗口宽度)
        vim.g.floaterm_height = 0.8 -- 高度占比 (相对于窗口高度)
        vim.g.floaterm_borderchars = "─│─│╭╮╯╰" -- 边框样式
        vim.g.floaterm_autoclose = 1 -- 退出终端后自动关闭
        vim.g.floaterm_title = "Floating Terminal ($1/$2)" -- 窗口标题
    end,
}
