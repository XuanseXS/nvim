return {
    'akinsho/toggleterm.nvim',
    lazy = false,
    version = "*",
    keys = {
        { "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", mode = "n", desc = "浮动终端" },
    },
    opts = {
        size = 15,
        open_mapping = [[<C-\>]],
        hide_numbers = true,
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        insert_mappings = true,
        terminal_mappings = true,
        persist_size = true,
        direction = "horizontal", -- 可选: "vertical" | "horizontal" | "tab" | "float"
        close_on_exit = true,
        float_opts = {
            border = "curved",
        }
    }
}
