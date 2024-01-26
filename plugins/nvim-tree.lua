local gwidth = vim.api.nvim_list_uis()[1].width
local gheight = vim.api.nvim_list_uis()[1].height
local width = math.floor(gwidth * 0.60)
local height = math.floor(gheight * 0.60)

-- return {
-- 	"nvim-tree/nvim-tree.lua",
-- 	opts = {
-- 		renderer = { group_empty = true },
-- 		view = {
-- 			width = width,
-- 			float = {
-- 				quit_on_focus_loss = true,
-- 				enable = true,
-- 				open_win_config = {
-- 					relative = "editor",
-- 					width = width,
-- 					height = height,
-- 					row = (gheight - height) * 0.4,
-- 					col = (gwidth - width) * 0.5,
-- 				},
-- 			},
-- 		},
-- 	},
-- }

return {
	"nvim-tree/nvim-tree.lua",
	cmd = nil,
	init = nil,
	config = nil,
	opts = nil,
}
