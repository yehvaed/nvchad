local presets = require("custom.configs.presets")

local ensure_installed = {}

for _, preset in ipairs(presets) do
	if preset.packages then
		for _, package in ipairs(preset.packages) do
			if package.source == "mason" then
				table.insert(ensure_installed, package[1])
			end
		end
	end
end

for _, preset in ipairs(presets) do
	if preset.mason then
		for _, package in ipairs(preset.mason) do
			if type(package) == "string" then
				table.insert(ensure_installed, package)
			end
		end
	end
end

return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "williamboman/mason.nvim" },
	config = function()
		require("mason-tool-installer").setup({
			ensure_installed = ensure_installed,
			automatic_installation = true,
		})
	end,
}
