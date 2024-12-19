return {
    "mfussenegger/nvim-dap",
    lazy = true,
    event = "BufReadPre",
    dependencies = {
	{ "mfussenegger/nvim-dap-python", lazy = true, ft = "python" },
    },
    config = function()
	local dap = require("dap")

	-- specific language adapters
	require("dap-python").setup("uv")

	-- keybindings
	vim.keymap.set("n", "<F5>", dap.continue)
	vim.keymap.set("n", "<F6>", dap.terminate)
	vim.keymap.set("n", "<F7>", dap.restart)
	vim.keymap.set("n", "<F10>", dap.step_over)
	vim.keymap.set("n", "<F11>", dap.step_into)
	vim.keymap.set("n", "<F12>", dap.step_out)
	vim.keymap.set("n", "<Space>bp", dap.toggle_breakpoint)
	vim.keymap.set("n", "<Space>B", dap.set_breakpoint)
    end
}
