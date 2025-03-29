-- PHP & Blade
vim.api.nvim_create_autocmd("FileType", {
	pattern = "blade",
	callback = function()
		require("luasnip").filetype_extend("blade", { "html", "php" })
	end,
})

-- Java
vim.api.nvim_create_autocmd("FileType", {
	pattern = "java",
	callback = function()
		local jdtls = require("jdtls")
		local home = os.getenv("HOME")
		local workspace_dir = home .. "/.local/share/eclipse/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

		local bundles = vim.split(
			vim.fn.glob(
				home
					.. "/.local/share/java-debug/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar",
				1
			),
			"\n"
		)

		jdtls.start_or_attach({
			cmd = { vim.fn.stdpath("data") .. "/mason/bin/jdtls" },
			root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" }),
			workspace_folder = workspace_dir,
			capabilities = require("cmp_nvim_lsp").default_capabilities(),
			init_options = {
				bundles = bundles,
			},
		})
	end,
})
