local M = {}

M.gitsigns = {
  v = {
    ["<leader>hs"] = {
      function()
        require("gitsigns").stage_hunk({
          vim.fn.line("."),
          vim.fn.line("v"),
        })
      end,
      "Stage hunk",
    },
    ["<leader>hr"] = {
      function()
        require("gitsigns").reset_hunk({
          vim.fn.line("."),
          vim.fn.line("v"),
        })
      end,
      "Reset hunk",
    },
  },
}

M.telescope = {
  n = {
    ["<leader>fk"] = { "<cmd> Telescope keymaps<CR>", "Find keybinding" },
    ["<leader>fc"] = { "<cmd> Telescope commands<CR>", "Find command" },
    ["<leader>e"] = { "<cmd> Telescope file_browser path=%:p:h select_buffer=true <CR>", "Find command" },
  },
}

return M
