return {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = { "c", "lua", "make", "cpp" },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
            },
        })
    end,
}
