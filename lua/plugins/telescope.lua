return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        { "<space>f", "<cmd>Telescope find_files<cr>" },
        { "<space>g", "<cmd>Telescope live_grep<cr>" },
        { "<space>b", "<cmd>Telescope buffers<cr>" },
        { "<space>h", "<cmd>Telescope help_tags<cr>" },
        { "<space>s", "<cmd>Telescope lsp_document_symbols<cr>" },
	{ "<space>e", "<cmd>Telescope file_browser<cr>" },
    },
    opts = {
	extensions = {
	    file_browser = {
		git_status = false,
	    },
	},
    },
}
