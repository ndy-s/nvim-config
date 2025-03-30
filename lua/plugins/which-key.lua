return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    keys = {
        -- {
        --   "<leader>?",
        --   function()
        --     require("which-key").show({ global = false })
        --   end,
        --   desc = "Buffer Local Keymaps (which-key)",
        -- },
    },
    config = function()
        local wk = require("which-key")
        wk.add({
            { "<leader>c", group = "Code (Diagnostics)"},
            { "<leader>d", group = "Debugger (DAP)" },
            { "<leader>g", group = "Code Navigation (LSP GoTo)" },
            { "<leader>t", group = "Test Runner" },
            { "<leader>w", group = "Window Management" },
        })
    end,
}
