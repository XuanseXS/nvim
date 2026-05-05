return {
    {
        'nvim-treesitter/nvim-treesitter',
        branch = "master",
        lazy = false,
        build = ':TSUpdate',
        config = function()
            local parser_install_dir = vim.fn.stdpath("data") .. "/treesitter"
            local config = {
                ensure_installed = { "c", "lua", "make", "cpp", "python", "bash" },
                auto_install = true,
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

            local ok = pcall(vim.fn.mkdir, parser_install_dir, "p")
            if ok or vim.fn.isdirectory(parser_install_dir) == 1 then
                vim.opt.runtimepath:append(parser_install_dir)
                config.parser_install_dir = parser_install_dir
            end

            require('nvim-treesitter.configs').setup(config)
        end,
    },

    {
        'HiPhish/rainbow-delimiters.nvim',
        version = "*",
        lazy = false,
        config = function()
            require "configs.highlight"
        end,
    }
}
