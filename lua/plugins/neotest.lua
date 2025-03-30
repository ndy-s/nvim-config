if true then
    return {}
end

return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"olimorris/neotest-phpunit",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-phpunit"),
			},
		})

		require("neotest-phpunit")({
			root_files = { "README.md" },
			phpunit_cmd = function()
				return "vendor/bin/phpunit"
			end,
		})
	end,
}
