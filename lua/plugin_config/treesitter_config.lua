require('nvim-treesitter.configs').setup{
	ensure_installed = {"svelte", "c", "lua", "html", "css", "javascript", "typescript", "tsx", "json", "yaml", "python", "bash", "cpp", "rust", "regex", "toml", "c_sharp"},
	highlight = {
		enable = true
	}
}
