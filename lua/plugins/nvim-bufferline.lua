return {
    -- akinsho/bufferline.nvim
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            local bufferline = require("bufferline")
            bufferline.setup({
                options = {
                    mode = "buffers",
                    number = "buffer_id",
                    style_preset = bufferline.style_preset.default,
                    close_command = "Bdelete! %d",
                    right_mouse_command = "Bdelete! %d",
                    middle_mouse_command = nil,
                    offsets = {
                        {
                            filetype = "neo-tree",
                            text = "Neo-tree",
                            text_align = "left",
                            highlight = "Directory",
                            separator = true,
                        }
                    },
                },
            })
        end
    },

    -- famiu/bufdelete.nvim
    {
        'famiu/bufdelete.nvim',
    }
}
