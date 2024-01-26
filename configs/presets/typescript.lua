return {
    mason = {"typescript-language-server"},
    lspconfig = {{
        name = "tsserver",
        filetypes = {"javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact",
                     "typescript.tsx"}
    }},
    treesitter = {"javascript", "typescript"}
}
