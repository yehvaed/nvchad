return {
	configs = { lsp = { { name = "rust_analyzer", filetypes = { "rust" } } } },
	packages = {
		{ "rust-analyzer", source = "mason" },
		{ "rustfmt", source = "mason" },
		{ "rust", source = "treesitter" },
	},
}
