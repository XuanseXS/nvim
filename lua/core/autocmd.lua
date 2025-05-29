vim.api.nvim_create_autocmd("WinScrolled", {
  callback = function()
    vim.schedule(function()
      require("rainbow-delimiters").enable(0)
    end)
  end,
})
