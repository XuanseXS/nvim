return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
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
    },
}
