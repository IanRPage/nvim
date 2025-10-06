return {
    "neovim/nvim-lspconfig",
    cmd = "LspInfo",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
	"hrsh7th/cmp-nvim-lsp", -- uncomment to enable completion
    },
    config = function()
	vim.keymap.set({"n", "x"}, "<A-F>", "<cmd>lua vim.lsp.buf.format()<CR>", opts)
        vim.keymap.set("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)

        -- using vim's built-in diagnostic command
        vim.keymap.set({"n", "x"}, "<space>d", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
        vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)

	-- specifying which language servers are implemented/setup
	local lsp_config = vim.lsp.config
        lsp_config.pylsp = {}
        lsp_config.ruff = {}
        lsp_config.rust_analyzer = {}
	lsp_config.clangd = {
	    cmd = {
		"clangd",
		"--fallback-style=Google",
		"--compile-commands-dir=build",
		"--background-index",
		"--clang-tidy"
	    },
	}
	lsp_config.lua_ls = {
	    settings = {
		Lua = {
		    format = {
			enable = true,
			-- for some reason the below settings don't change how lua language server
			-- formats code. it does an ugly 2 tab indentation
			-- defaultConfig = {
			--     indent_style = "space",
			--     indent_size = "4",
			-- }
		    },
		},
	    },
	}
    end,
}
