return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
        options = {
            -- 只显示真实的tab不显示buffer
            mode = "tabs",
            -- 显示tab的id
            number = "ordinal",
            offsets = { {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                text_align = "center"
            } },
        },
    }
}
