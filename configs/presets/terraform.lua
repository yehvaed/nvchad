return {
  mason = {
    "terraform-ls",
    "tflint",
    function(null_ls)
      return { null_ls.builtins.formatting.terraform_fmt }
    end,
  },
  lspconfig = { { name = "terraformls", filetypes = { "terraform" } } },
  treesitter = { "javascript", "typescript" },
}
