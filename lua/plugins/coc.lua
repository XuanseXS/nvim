return {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()
        vim.opt.updatetime = 500
        vim.g.coc_global_extensions = {
            "coc-marketplace",
            "coc-clangd",
            "coc-sumneko-lua",
            "coc-pairs",
            "coc-git"
        }

        local keyset = vim.keymap.set
        -- Autocomplete
        function _G.check_back_space()
            local col = vim.fn.col('.') - 1
            return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
        end

        local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
        -- Tab 或者 Shift-Tab 选择补全
        keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
        keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
        -- 回车<CR>选中补全
        keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

        keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})
        keyset("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
        keyset("n", "gi", "<Plug>(coc-implementation)", {silent = true})
        keyset("n", "gr", "<Plug>(coc-references)", {silent = true})

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
        keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})
        -- 格式化代码
        keyset("x", "<leader>f", "<Plug>(coc-format-selected)", { silent = true })
        keyset("n", "<leader>f", "<Plug>(coc-format-selected)", { silent = true })
    end,
}
