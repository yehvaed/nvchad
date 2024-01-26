return {
    "rcarriga/nvim-notify",
    keys = {
        { "<leader>fn", "<cmd> Telescope notify <cr>", "Filter notifications" },
    },
    opts = {
        stages = "static",
        timeout = 3000,
        render = "compact",
        top_down = false,
    },
}