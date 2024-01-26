local presets = require("custom.configs.presets")

local ensure_installed = {}

for _, preset in ipairs(presets) do
	if preset.packages then
		for _, package in ipairs(preset.packages) do
			if package.source == "treesitter" then
				table.insert(ensure_installed, package[1])
			end
		end
	end
end

for _, preset in ipairs(presets) do
	if preset.treesitter then
		for _, package in ipairs(preset.treesitter) do
			table.insert(ensure_installed, package)
		end
	end
end

return {
	"nvim-treesitter/nvim-treesitter",
	opts = {
		rainbow = {
			enable = true,
			-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
			extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
			max_file_lines = nil, -- Do not enable for files with more than n lines, int
			-- colors = {}, -- table of hex strings
			-- termcolors = {} -- table of colour name strings
		},
		ensure_installed = ensure_installed,
		auto_install = true,
	},
	dependencies = { "p00f/nvim-ts-rainbow" },
}
