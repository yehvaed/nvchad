return {
	"nvim-neorg/neorg",
	ft = { "norg", "org" },
	cmd = "Neorg",
	run = ":Neorg sync-parsers", -- This is the important bit!
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {},
				["core.completion"] = {},
			},
		})
	end,
	dependencies = { "nvim-lua/plenary.nvim" },
	-- lazy = false,
}
