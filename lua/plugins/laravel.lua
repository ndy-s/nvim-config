return {
    {
        -- Add the Laravel.nvim plugin which gives the ability to run Artisan commands
        -- from Neovim.
        "adalessa/laravel.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "tpope/vim-dotenv",
            "MunifTanjim/nui.nvim",
            "nvimtools/none-ls.nvim",
        },
        cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Laravel" },
        keys = function()
            return {
                { "<leader>la", ":Laravel artisan<CR>", desc = "Laravel Artisan Command" },
                { "<leader>lr", ":Laravel routes<CR>",  desc = "Laravel List Routes" },
                { "<leader>lm", ":Laravel related<CR>", desc = "Laravel Related Files" },
            }
        end,
        cond = function()
            -- Check if composer.json exists in current working directory or above
            return vim.fn.filereadable(vim.fn.getcwd() .. "/composer.json") == 1
        end,
        event = { "VeryLazy" },
        opts = {
            lsp_server = "phpactor",
            features = { null_ls = { enable = false } },
        },
        config = function()
            -- Laravel Keymaps (Grouped under <leader>l)
            local wk = require("which-key")
            wk.add({
                { "<leader>l", group = "Laravel (Commands)" },
            })
        end,
    },
    {
        -- Add the blade-nav.nvim plugin which provides Goto File capabilities
        -- for Blade files.
        "ricardoramirezr/blade-nav.nvim",
        dependencies = {
            "hrsh7th/nvim-cmp",
        },
        ft = { "blade", "php" },
        cond = function()
            -- Check if composer.json exists in current working directory or above
            return vim.fn.filereadable(vim.fn.getcwd() .. "/composer.json") == 1
        end,
        opts = {
            close_tag_on_complete = true, -- default: true
        },
    },
}
