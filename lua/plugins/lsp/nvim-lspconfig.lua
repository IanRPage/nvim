return {
    "neovim/nvim-lspconfig",
    cmd = "LspInfo",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
	"hrsh7th/cmp-nvim-lsp", -- cmp LSP completion
    },
    config = function()
	local lsp_zero = require("lsp-zero")

        -- lsp_attach is where you enable features that only work
        -- if there is a language server active in the file
	local lsp_attach = function(client, buffer)
	    lsp_zero.default_keymaps { buffer = bufnr }
	    vim.keymap.set({"n", "x"}, "<A-F>", function()
		vim.lsp.buf.format({async = false, timeout_ms = 10000})
	    end, opts)
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

        -- These are just examples. Replace them with the language
        -- servers you have installed in your system
        require("lspconfig").pylsp.setup {}
        require("lspconfig").ruff.setup {}
        require("lspconfig").rust_analyzer.setup {}
    end,
}
