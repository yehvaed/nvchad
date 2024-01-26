return {
    mason = {"bash-language-server", "beautysh"},
    lspconfig = {{
        name = "bashls",
        filetypes = {"sh", "bash", "zsh"}
    }},
    treesitter = {"bash"}
}
