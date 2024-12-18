return {
    "nvim-treesitter/nvim-treesitter",
    lazy = true,
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    event = { "BufReadPre", "BufNewFile" },
    -- dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
    config = function()
	require("nvim-treesitter.configs").setup {
	    indent = { enable = true },
	    ensure_installed = {
		"rust",
		"python",
		"json",
		"c",
		"cpp",
		"lua",
		"comment"
	    },
	    incremental_selection = {
		enable = true,
		keymaps = {
		    init_selection = "<C-space>",
		    node_incremental = "<C-space>",
		    scope_incremental = false,
		    node_decremental = "<bs>",
		},
	    },
	    highlight = {
		enable = true,
	    }
	}
    end,
}
