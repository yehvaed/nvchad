local presets = require("custom.configs.presets")
local servers = {}

for _, preset in ipairs(presets) do
	if preset.configs and preset.configs.lsp then
		for _, server_definition in ipairs(preset.configs.lsp) do
			table.insert(servers, server_definition)
		end
	end
end

for _, preset in ipairs(presets) do
	if preset.lspconfig then
		for _, server_definition in ipairs(preset.lspconfig) do
			table.insert(servers, server_definition)
		end
	end
end

return {
	"neovim/nvim-lspconfig",
	config = function()
		local configs = require("plugins.configs.lspconfig")
		local on_attach = configs.on_attach
		local capabilities = configs.capabilities
		local lspconfig = require("lspconfig")
		for _, lsp in ipairs(servers) do
			local setup = vim.tbl_deep_extend("force", {
				on_attach = on_attach,
				capabilities = capabilities,
			}, lsp)

			lspconfig[lsp.name].setup(setup)
		end
	end,
}
