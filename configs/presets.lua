-- return plugins
local function basename(str)
	return string.gsub(str, "(.*/)(.*)", "%2")
end
local presets =
	vim.split(vim.fn.glob("~/.local/config/nvim/lua/custom/configs/presets/*.lua"), "\n", { trimempty = true })
local pluginsLoaded = {}

for _, plugin in pairs(presets) do
	local pluginName = basename(plugin):gsub("%.lua", "")
	table.insert(pluginsLoaded, require("custom.configs.presets." .. pluginName))
end

return pluginsLoaded
