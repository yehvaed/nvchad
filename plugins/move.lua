return {
    "fedepujol/move.nvim",
    keys = {
        {"<A-j>", "<cmd> MoveLine(1) <cr>", desc = "Move line down"},
        {"<A-k>", "<cmd> MoveLine(-1) <cr>", desc = "Move line up"},
        {"<A-l>", "<cmd> MoveHChar(1) <cr>", desc = "Move line right"},
        {"<A-h>", "<cmd> MoveHChar(-1) <cr>", desc = "Move line left"},
        {"<A-j>", "<cmd> MoveLine(1) <cr>", mode = "v", desc = "Move line down"},
        {"<A-k>", "<cmd> MoveLine(-1) <cr>", mode = "v", desc = "Move line up"},
        {
            "<A-l>",
            "<cmd> MoveHChar(1) <cr>",
            mode = "v",
            desc = "Move line right"
        },
        {
            "<A-h>",
            "<cmd> MoveHChar(-1) <cr>",
            mode = "v",
            desc = "Move line left"
        }
    },
    lazy = false
}
