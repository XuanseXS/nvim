return {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    lazy = false, -- neo-tree will lazily load itself
    -- keys = {
    --     {""}
    -- },
    ---@module "neo-tree"
    ---@type neotree.Config?
    opts = {
        close_if_last_window = true,
        actions = {
            open_file = {
                quit_on_open = true, -- 不关闭 Neo-tree
                resize_window = true,
                window_picker = {
                    enable = true, -- 允许选择目标窗口
                },
            },
        },
        filesystem = {
            filtered_items = {
                visible = true, -- 设为 true 默认显示隐藏文件
                hide_dotfiles = false, -- 不隐藏 . 开头的文件
                hide_gitignored = false -- 不隐藏 git 忽略的文件（可选）
            }
        },
    },
}
