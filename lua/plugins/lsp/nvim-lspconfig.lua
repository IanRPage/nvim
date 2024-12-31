return {
    "neovim/nvim-lspconfig",
    cmd = "LspInfo",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
	"hrsh7th/cmp-nvim-lsp", -- uncomment to enable completion
    },
    config = function()
	local lsp_zero = require("lsp-zero")

	local lsp_attach = function(client, buffer)
	    lsp_zero.default_keymaps { buffer = buffer }

	    -- lsp custom keymaps
	    vim.keymap.set({"n", "x"}, "<A-F>", "<cmd>LspZeroFormat<CR>", opts)
	    vim.keymap.set("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)

	    -- using vim's built-in diagnostic command
	    vim.keymap.set({"n", "x"}, "<space>d", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
	    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
	    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
	    vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)
	    
	end

	lsp_zero.extend_lspconfig {
	    sign_text = {
		error = "✘",
		warn = "▲",
		hint = "⚑",
		info = "»",
	    },
	    lsp_attach = lsp_attach,
	    capabilities = require("cmp_nvim_lsp").default_capabilities()  -- uncomment to enable completion
	}

	-- specifying which language servers are implemented/setup
        require("lspconfig").pylsp.setup {}
        require("lspconfig").ruff.setup {}
        require("lspconfig").rust_analyzer.setup {}
    end,
}
