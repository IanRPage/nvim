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
        require("lspconfig").pylsp.setup {}
        require("lspconfig").ruff.setup {}
        require("lspconfig").rust_analyzer.setup {}
	require("lspconfig").clangd.setup {
		--    settings = {
		-- clangd = {
		--     format = {
		-- 	style = ".clang-format"
		--     }
		-- }
		--    }
	}
    end,
}
