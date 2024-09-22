return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    event = "VeryLazy",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        vim.g.loaded_netrwPlugin = 1
        vim.g.loaded_netrw = 1

        -- 自动关闭 nvim-tree
        vim.cmd([[
            autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
        ]])

        local function my_on_attach(bufnr)
            local api = require "nvim-tree.api"

            local function opts(desc)
                return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end

            -- default mappings
            api.config.mappings.default_on_attach(bufnr)

            -- custom mappings
            vim.keymap.set('n', 't',   api.node.open.tab,                   opts('Open: New Tab'))
            vim.keymap.set('n', '?',        api.tree.toggle_help,                  opts('Help'))
            vim.keymap.set('n', 'v',    api.node.open.vertical,              opts('Open: Vertical Split'))
            vim.keymap.set('n', 'h',    api.node.open.horizontal,            opts('Open: Horizontal Split'))
        end

        require("nvim-tree").setup({
            -- 文件显示设置
            filters = {
                dotfiles = false,  -- 显示隐藏文件（以 . 开头的文件）
            }, 
            on_attach = my_on_attach,
        })
    end,
}
