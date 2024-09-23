return {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = { 
	open_mapping = [[<C-\>]], 
	size = 15,
        direction = "horizontal", 
	insert_mappings = true, -- whether or not the open mapping applies in insert mode
	terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
	on_open = function(term)
	    local opts = {buffer = 0}
	    vim.keymap.set({"t", "n"}, "<esc>", [[<C-\><C-n>]], opts)
	    vim.keymap.set({"t", "n"}, "<C-h>", [[<cmd>wincmd h<CR>]], opts)
	    vim.keymap.set({"t", "n"}, "<C-j>", [[<cmd>wincmd j<CR>]], opts)
	    vim.keymap.set({"t", "n"}, "<C-k>", [[<cmd>wincmd k<CR>]], opts)
	    vim.keymap.set({"t", "n"}, "<C-l>", [[<cmd>wincmd l<CR>]], opts)
	    -- vim.keymap.set({"t", "n"}, "<C-w>", [[<C-\><C-n><C-w>]], opts)
	end,
    },
}
