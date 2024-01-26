return {
    "phaazon/hop.nvim",
    branch = "v2", -- optional but strongly recommended
    config = function()
        -- you can configure Hop the way you like here; see :h hop-config
        local hop = require("hop")
        hop.setup({keys = "etovxqpdygfblzhckisuran"})
    end,
    keys = {
        {"<leader>hw", "<cmd> HopWord <cr>", "Easy montion jump to word"},
        {"<leader>hl", "<cmd> HopLine <cr>", "Easy montion jump to line"}
    },
    lazy = false
}
