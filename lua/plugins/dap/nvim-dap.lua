return {
    "mfussenegger/nvim-dap",
    lazy = true,
    keys = {
	{ "<F5>", "<cmd>lua require('dap').continue()<CR>" }, 
	{ "<F6>", "<cmd>lua require('dap').terminate()<CR>" },
	{ "<F7>", "<cmd>lua require('dap').restart()<CR>" },
	{ "<F10>", "<cmd>lua require('dap').step_over()<CR>" },
	{ "<F11>", "<cmd>lua require('dap').step_into()<CR>" },
	{ "<F12>", "<cmd>lua require('dap').step_out()<CR>" },
	{ "<Space>tb", "<cmd>lua require('dap').toggle_breakpoint()<CR>" },
	{ "<Space>B", "<cmd>lua require('dap').set_breakpoint()<CR>" },
    },
    config = function()
	local dap = require('dap')

	dap.adapters.lldb = {
	    type = 'executable',
	    command = '/usr/bin/lldb-vscode',  -- Adjust path if necessary
	    name = "lldb"
	}

	dap.configurations.rust = {
	    {
		name = "Launch",
		type = "lldb",
		request = "launch",
		program = function()
		    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
		end,
		cwd = '${workspaceFolder}',
		stopOnEntry = false,
		args = {},
		runInTerminal = false,
	    },
	}
    end,
}
