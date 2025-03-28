return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    keys = {
        {
            "<leader>f",
            function()
                vim.lsp.buf.format({ async = true })
            end,
            desc = "Format buffer using none-ls",
        },
    },
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.completion.spell,
                null_ls.builtins.formatting.stylua,
                require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
            },
        })
    end,
}
