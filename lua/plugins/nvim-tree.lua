return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    event = "VeryLazy",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        { "t", function() require("nvim-tree.api").node.open.tab() end,        desc = "Open: New Tab" },
        { "?", function() require("nvim-tree.api").tree.toggle_help() end,     desc = "Help" },
        { "gv", function() require("nvim-tree.api").node.open.vertical() end,   desc = "Open: Vertical Split" },
        { "gh", function() require("nvim-tree.api").node.open.horizontal() end, desc = "Open: Horizontal Split" },
    },
    config = function()
        vim.g.loaded_netrwPlugin = 1
        vim.g.loaded_netrw = 1

        -- 自动关闭 nvim-tree
        vim.cmd([[
            autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
        ]])


        require("nvim-tree").setup({
            -- 文件显示设置
            filters = {
                dotfiles = false,  -- 显示隐藏文件（以 . 开头的文件）
            },
        })
    end,
}
