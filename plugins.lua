-- return plugins
local function basename(str)
	return string.gsub(str, "(.*/)(.*)", "%2")
end
local plugins = vim.split(vim.fn.glob("~/.config/nvim/lua/custom/plugins/*.lua"), "\n", { trimempty = true })
local pluginsLoaded = {}

for _, plugin in pairs(plugins) do
	local pluginName = basename(plugin):gsub("%.lua", "")
	table.insert(pluginsLoaded, require("custom.plugins." .. pluginName))
end

return pluginsLoaded
