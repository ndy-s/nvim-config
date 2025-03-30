-- PHP & Blade
vim.api.nvim_create_autocmd("FileType", {
    pattern = "blade",
    callback = function()
        -- Check if the extension has already been applied to this buffer
        if not vim.b.blade_snippets_extended then
            require("luasnip").filetype_extend("blade", { "html", "php" })
            -- Mark the extension as applied
            vim.b.blade_snippets_extended = true
        end
    end,
})

-- Java
vim.api.nvim_create_autocmd("FileType", {
    pattern = "java",
    callback = function()
        -- Prevent reloading if jdtls is already attached
        local clients = vim.lsp.get_clients()
        for _, client in ipairs(clients) do
            if client.name == "jdtls" then
                return
            end
        end
        require("ftplugin.java")
    end,
})
