local presets = require("custom.configs.presets")

return {
	"jay-babu/mason-null-ls.nvim",
	lazy = false,
	dependencies = { "williamboman/mason.nvim", "nvimtools/none-ls.nvim" },
	config = function()
		local null_ls = require("null-ls")

		local ensure_installed = {}
		local sources = {}

		for _, preset in ipairs(presets) do
			if preset.mason then
				for _, package in ipairs(preset.mason) do
					if type(package) == "string" then
						table.insert(ensure_installed, package)
					else
						for _, ls in ipairs(package(null_ls)) do
							table.insert(sources, ls)
						end
					end
				end
			end
		end

		null_ls.setup({
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({
						group = augroup,
						buffer = bufnr,
					})
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
							-- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
							vim.lsp.buf.format({ async = false })
						end,
					})
				end
			end,
			sources = sources,
			debug = true,
		})

		require("mason-null-ls").setup({
			ensure_installed = ensure_installed,
			automatic_installation = true,
			handlers = {},
		})
	end,
}
