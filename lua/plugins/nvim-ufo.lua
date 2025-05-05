return {
    "kevinhwang91/nvim-ufo",
    event = "BufRead",
    dependencies = { "kevinhwang91/promise-async" },
   keys = {
	{ "zR", function() require("ufo").openAllFolds() end },
	{ "zM", function() require("ufo").closeAllFolds() end },
	{ "K", function()
	    local winid = require("ufo").peekFoldedLinesUnderCursor()
	    if not winid then
		vim.lsp.buf.hover()
	    end
	end },
    },
    config = function()
	vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
	vim.o.foldlevel = 99
	vim.o.foldlevelstart = 99
	vim.o.foldenable = true

	require("ufo").setup()
    end,
}
