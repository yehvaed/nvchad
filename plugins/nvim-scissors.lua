return {
  "chrisgrieser/nvim-scissors",
  dependencies = "nvim-telescope/telescope.nvim", -- optional
  opts = {
    snippetDir = "~/.local/share/nvim-scissors",
  },
  keys = {
    {
      "<leader>se",
      function()
        require("scissors").editSnippet()
      end,
      desc = "Edit snippet",
    },
    {
      "<leader>sa",
      function()
        require("scissors").addNewSnippet()
      end,
      mode = { "n", "x" },
      desc = "Add new snippet",
    },
  },
}
