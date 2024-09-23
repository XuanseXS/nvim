return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
       require("nvim-treesitter").setup({
           -- 添加c、lua语法高亮
            ensure_installed = { "c", "lua" },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
