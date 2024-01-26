return {
    mason = {"lua-language-server", "stylua"},
    lspconfig = {{
        name = "lua_ls",
        filetypes = {"lua"}
    }},
    treesitter = {"lua"}
}
