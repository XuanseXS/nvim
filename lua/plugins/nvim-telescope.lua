return {
    'nvim-telescope/telescope.nvim',
    version = "*",
    lazy = false,
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { '<leader>ff', function() require('telescope.builtin').find_files() end, desc = 'Telescope find files' },
        { '<leader>fg', function() require('telescope.builtin').live_grep() end, desc = 'Telescope live grep' },
        { '<leader>fb', function() require('telescope.builtin').buffers() end, desc = 'Telescope buffers' },
        { '<leader>fh', function() require('telescope.builtin').help_tags() end, desc = 'Telescope help tags' },
    },
    config = function()
        require('telescope').setup({
            theme = 'tokyonight',
        })

        -- 设置高亮组实现背景透明
        -- vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = 'none' })
        -- vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg = '#1a1b26' })
        -- vim.api.nvim_set_hl(0, 'TelescopePromptNormal', { bg = 'none' })
        -- vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { bg = '#1a1b26' })
        -- vim.api.nvim_set_hl(0, 'TelescopeResultsNormal', { bg = 'none' })
        -- vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { bg = '#1a1b26' })
        -- vim.api.nvim_set_hl(0, 'TelescopePreviewNormal', { bg = 'none' })
        -- vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { bg = '#1a1b26' })
    end,
}
