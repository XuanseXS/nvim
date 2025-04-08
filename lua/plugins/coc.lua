return {
    "neoclide/coc.nvim",
    branch = "release",
    lazy = false,
    keys = {
        {
            "<c-j>",
            "<Plug>(coc-snippets-expand-jump)",
            mode = "i",
            desc = "trigger completion"
        },
        {
            "<c-space>",
            "coc#refresh()",
            mode = "i",
            silent = true,
            expr = true,
            desc = "trigger completion"
        },
        -- Tab 或 Shift-Tab 用于选择补全
        {
            "<TAB>",
            'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()',
            mode = "i",
            expr = true,
            desc = "Navigate to next item in completion menu",
        },
        {
            "<S-TAB>",
            [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]],
            mode = "i",
            expr = true,
            desc = "Navigate to previous item in completion menu",
        },
        -- 回车选中补全
        {
            "<CR>",
            [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]],
            mode = "i",
            expr = true,
            desc = "Confirm completion item",
        },
        -- 按键绑定：显示函数声明
        {
            "K",
            '<CMD>lua _G.show_docs()<CR>',
            mode = "n",
            silent = true,
            desc = "Show function documentation",
        },
        -- 按键绑定：格式化代码（可视模式）
        {
            "<leader>F",
            "<Plug>(coc-format-selected)",
            mode = "x",
            silent = true,
            desc = "Format selected code",
        },
        -- 按键绑定：格式化代码（普通模式）
        {
            "<leader>F",
            "<Plug>(coc-format-selected)",
            mode = "n",
            silent = true,
            desc = "Format selected code",
        },
        -- 跳转定义、类型定义、实现、引用
        { "gd", "<Plug>(coc-definition)",      mode = "n", desc = "Go to definition" },
        { "gy", "<Plug>(coc-type-definition)", mode = "n", desc = "Go to type definition" },
        { "gi", "<Plug>(coc-implementation)",  mode = "n", desc = "Go to implementation" },
        { "gr", "<Plug>(coc-references)",      mode = "n", desc = "Find references" },
    },
    config = function()
        vim.opt.updatetime = 300
        vim.opt.backup = false
        vim.opt.writebackup = false
        vim.g.coc_global_extensions = {
            "coc-marketplace",
            "coc-clangd",
            "coc-pairs",
            "coc-lua",
            "coc-git",
            "coc-jedi"
        }

        -- Autocomplete
        function _G.check_back_space()
            local col = vim.fn.col('.') - 1
            return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
        end

        -- K显示函数的声明
        function _G.show_docs()
            local cw = vim.fn.expand('<cword>')
            if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
                vim.api.nvim_command('h ' .. cw)
            elseif vim.api.nvim_eval('coc#rpc#ready()') then
                vim.fn.CocActionAsync('doHover')
            else
                vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
            end
        end
    end,
}
