local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- NOTE: https://github.com/nvim-tree/nvim-tree.lua/wiki/Auto-Close
autocmd("QuitPre", {
	callback = function()
		local tree_wins = {}
		local floating_wins = {}
		local wins = vim.api.nvim_list_wins()
		for _, w in ipairs(wins) do
			local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(w))
			if bufname:match("NvimTree_") ~= nil then
				table.insert(tree_wins, w)
			end
			if vim.api.nvim_win_get_config(w).relative ~= "" then
				table.insert(floating_wins, w)
			end
		end
		if 1 == #wins - #floating_wins - #tree_wins then
			-- Should quit, so we close all invalid windows.
			for _, w in ipairs(tree_wins) do
				vim.api.nvim_win_close(w, true)
			end
		end
	end,
})

function _G.table.flatten(inputTable)
	local outputTable = {}

	local function flatten(input, output)
		for _, value in ipairs(input) do
			if type(value) == "table" then
				flatten(value, output)
			else
				table.insert(output, value)
			end
		end
	end

	flatten(inputTable, outputTable)
	return outputTable
end

function _G.table.map(arr, func)
	local result = {}
	for i, v in ipairs(arr) do
		result[i] = func(v)
	end
	return result
end
