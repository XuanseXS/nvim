return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
        options = {
            -- 只显示真实的tab不显示buffer
            mode = "buffers",
            -- style_preset = bufferline.style_preset.default, -- or bufferline.style_preset.minimal,
            close_command = "bdelete! %d",
            right_mouse_command = "bdelete! %d",
            -- 显示tab的id
            number = "buffer_id",
            offsets = {
                {
                    filetype = "neo-tree",
                    text = "Neo-tree",
                    text_align = "left",
                    highlight = "Directory",
                    separator = true
                }
            },
        },
    }
}
