return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				-- LSP servers
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"intelephense",
					"html",
					"cssls",
					"tailwindcss",
                    "jdtls",
				},
			})
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({

				-- a list of all tools you want to ensure are installed upon
				-- start
				-- non-LSP tools
				ensure_installed = {

					-- you can pin a tool to a particular version
					-- { 'golangci-lint', version = 'v1.47.0' },

					-- you can turn off/on auto_update per tool
					-- { 'bash-language-server', auto_update = true },

					-- you can do conditional installing
					-- { 'gopls', condition = function() return not os.execute("go version") end },
					"shfmt",
					"shellcheck",
					"stylua",
					"luacheck",
					"eslint_d",
					"pint",
                    "phpstan",
					-- "php-cs-fixer",
					"blade-formatter",
                    "google-java-format",
                    "java-debug-adapter",
				},

				-- if set to true this will check each tool for updates. If updates
				-- are available the tool will be updated. This setting does not
				-- affect :MasonToolsUpdate or :MasonToolsInstall.
				-- Default: false
				auto_update = false,

				-- automatically install / update on startup. If set to false nothing
				-- will happen on startup. You can use :MasonToolsInstall or
				-- :MasonToolsUpdate to install tools and check for updates.
				-- Default: true
				run_on_start = true,

				-- set a delay (in ms) before the installation starts. This is only
				-- effective if run_on_start is set to true.
				-- e.g.: 5000 = 5 second delay, 10000 = 10 second delay, etc...
				-- Default: 0
				start_delay = 3000, -- 3 second delay

				-- Only attempt to install if 'debounce_hours' number of hours has
				-- elapsed since the last time Neovim was started. This stores a
				-- timestamp in a file named stdpath('data')/mason-tool-installer-debounce.
				-- This is only relevant when you are using 'run_on_start'. It has no
				-- effect when running manually via ':MasonToolsInstall' etc....
				-- Default: nil
				debounce_hours = 5, -- at least 5 hours between attempts to install/update

				-- By default all integrations are enabled. If you turn on an integration
				-- and you have the required module(s) installed this means you can use
				-- alternative names, supplied by the modules, for the thing that you want
				-- to install. If you turn off the integration (by setting it to false) you
				-- cannot use these alternative names. It also suppresses loading of those
				-- module(s) (assuming any are installed) which is sometimes wanted when
				-- doing lazy loading.
				integrations = {
					["mason-lspconfig"] = true,
					["mason-null-ls"] = true,
					["mason-nvim-dap"] = true,
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
        dependencies = {
            "mfussenegger/nvim-jdtls",
        },
		keys = {
			{ "K", vim.lsp.buf.hover, mode = "n", desc = "LSP Hover" },
			{ "<leader>gd", vim.lsp.buf.definition, mode = "n", desc = "Go to Definition" },
            { "<leader>gr", vim.lsp.buf.references, mode = "n", desc = "Find References"},
			{ "<leader>a", vim.lsp.buf.code_action, mode = { "n", "v" }, desc = "Code Action" },
		},
		config = function()
			-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			-- List all LSP servers
			local servers = {
				"lua_ls",
				"ts_ls",
				"intelephense",
				"html",
				"cssls",
				"tailwindcss",
                "jdtls",
			}

			for _, server in ipairs(servers) do
				lspconfig[server].setup({
					capabilities = capabilities,
				})
			end
		end,
	},
}
