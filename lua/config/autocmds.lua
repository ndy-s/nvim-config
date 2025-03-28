vim.api.nvim_create_autocmd("FileType", {
    pattern = "blade",
    callback = function()
        require("luasnip").filetype_extend("blade", { "html", "php" })
    end,
})

