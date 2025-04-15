return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
	"williamboman/mason.nvim",
	"neovim/nvim-lspconfig",
    },
    config = function()
	require("mason-lspconfig").setup {
	    ensure_installed = {
		"pylsp",
		"rust_analyzer",
		"clangd",
		"ruff",
		"ts_ls",
		"cssls",
		"html",
	    },
	}
    end
}
