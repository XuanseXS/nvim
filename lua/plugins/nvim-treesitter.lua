return {
    {
        'nvim-treesitter/nvim-treesitter',
        version = 'v0.9.3',
        run = ':TSUpdate',
        config = function()
            require('nvim-treesitter.configs').setup {
                ensure_installed = { "c", "lua", "make", "cpp", "python", "bash" },
                highlight = {
                    enable = true,
                    disable = function(lang, buf)
                        local max_filesize = 1024 * 1024 -- 1 MB
                        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                        if ok and stats and stats.size > max_filesize then
                            return true
                        end
                    end,
                    additional_vim_regex_highlighting = false
                },
            }
        end,
    },

    {
        'HiPhish/rainbow-delimiters.nvim',
        branch = 'master',
        lazy = false,
        config = function()
            require "configs.highlight"
        end,
    }
}
