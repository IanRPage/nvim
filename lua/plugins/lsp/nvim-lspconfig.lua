return {
    "neovim/nvim-lspconfig",
    cmd = "LspInfo",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
	"hrsh7th/cmp-nvim-lsp", -- cmp LSP completion
    },
    config = function()
	local lsp_zero = require("lsp-zero")

	local lsp_attach = function(client, buffer)
	    lsp_zero.default_keymaps { buffer = bufnr }

	    -- lsp custom keymaps
	    vim.keymap.set({"n", "x"}, "<A-F>", "<cmd>LspZeroFormat<CR>", opts)
	    vim.keymap.set("n", "ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
	end

	lsp_zero.extend_lspconfig {
	    sign_text = {
		error = "✘",
		warn = "▲",
		hint = "⚑",
		info = "»",
	    },
	    lsp_attach = lsp_attach,
	    capabilities = require("cmp_nvim_lsp").default_capabilities()
	}

	-- specifying which language servers are implemented/setup
        require("lspconfig").pylsp.setup {}
        require("lspconfig").ruff.setup {}
        require("lspconfig").rust_analyzer.setup {}
    end,
}
