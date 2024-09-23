return {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = { 
	open_mapping = [[<C-\>]], 
	size = 15,
        direction = "horizontal", 
	insert_mappings = true,
	terminal_mappings = true,
	on_open = function(term)
	    local opts = {buffer = 0}
	    vim.keymap.set({"t", "n"}, "<esc>", [[<C-\><C-n>]], opts)
	    vim.keymap.set({"t", "n"}, "<C-h>", [[<cmd>wincmd h<CR>]], opts)
	    vim.keymap.set({"t", "n"}, "<C-j>", [[<cmd>wincmd j<CR>]], opts)
	    vim.keymap.set({"t", "n"}, "<C-k>", [[<cmd>wincmd k<CR>]], opts)
	    vim.keymap.set({"t", "n"}, "<C-l>", [[<cmd>wincmd l<CR>]], opts)
	end,
	config = function()
		--    -- if vim.loop.os_uname().sysname == "Windows_NT" then
		--    if vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1 then
		-- -- local powershell_options = {
		-- --     shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
		-- --     shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
		-- --     shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
		-- --     shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
		-- --     shellquote = "",
		-- --     shellxquote = "",
		-- -- }
		-- --
		-- -- for option, value in pairs(powershell_options) do
		-- --     vim.opt[option] = value
		-- -- end
		--
		-- vim.cmd [[let &shell = "C:\Program Files\PowerShell\7\pwsh.exe"]]
		-- vim.cmd [[let &shellcmdflag = "-s"]]
		--    end
		--
		--    require("toggleterm").setup(opts)
	end,
    },
}
