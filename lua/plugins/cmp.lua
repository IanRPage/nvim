return {
    "hrsh7th/nvim-cmp",
    dependencies = { 
	"hrsh7th/cmp-path", -- cmp path completion
	"hrsh7th/cmp-buffer", -- cmp in buffer suggestion completions
	-- "L3MON4D3/LuaSnip", -- might want to try out luasnip later
    },
    config = function()
	local cmp = require("cmp")
	-- require('luasnip.loaders.from_vscode').lazy_load() -- need to add to use luasnip
	cmp.setup {
	    preselect = cmp.PreselectMode.None,
	    snippet = {
		expand = function(args)
		    vim.snippet.expand(args.body) -- if using native Neovim snippets (v0.10+)
		    -- require('luasnip').lsp_expand(args.body) -- might use luasnip down the line
		end,
	    },
	    mapping = {
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<S-Tab>"] = cmp.mapping.select_prev_item(),
		["<Tab>"] = cmp.mapping.select_next_item(),
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.close(),
		["<CR>"] = cmp.mapping.confirm {
		    behavior = cmp.ConfirmBehavior.Insert,
		    select = true,
		},
	    },
	    -- Installed sources
	    sources = {
		{ name = "nvim_lsp" },
		{ name = "path" },
		{ name = "buffer" },
		-- { name = "luasnip" }, -- need it for luasnip
	    },
	    window = {
	        completion = cmp.config.window.bordered(),
	        documentation = cmp.config.window.bordered(),
	    },
	}
    end,
}
