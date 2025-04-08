return {
    'lewis6991/gitsigns.nvim',
    lazy = false, -- 可选：不设置为 true 会在启动时加载
    config = function()
        require('gitsigns').setup()
    end
}
