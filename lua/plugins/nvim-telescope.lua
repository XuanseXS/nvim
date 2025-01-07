return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.7',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        -- 列出当前工作目录中的文件 
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        -- 当前工作目录中搜索字符串并在键入时实时获取结果
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        -- 列出当前 neovim 实例中的打开缓冲区
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

        require('telescope').setup({
            theme = 'tokyonight',
        })
    end,
}
