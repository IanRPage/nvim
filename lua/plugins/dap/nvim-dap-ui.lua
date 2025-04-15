return {
    "rcarriga/nvim-dap-ui",
    lazy = true,
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    keys = {
	{ "<F5>" },
    },
    opts = {
	layouts = {
	    {
		elements = {
		    { id = "watches", size = 0.25 },
		    { id = "stacks", size = 0.25 },
		    { id = "breakpoints", size = 0.25 },
		    { id = "scopes", size = 0.25 },
		},
		position = "left",
		size = 40,
	    },
	    {
		elements = {
		    { id = "console", size = 0.25 },
		    { id = "repl", size = 0.75 },
		},
		position = "bottom",
		size = 10
	    }
	}
    },
   config = function(_, opts)
	local dap, dapui = require("dap"), require("dapui")

	dapui.setup(opts)

	dap.listeners.before.attach.dapui_config = function()
	    dapui.open()
	end
	dap.listeners.before.launch.dapui_config = function()
	    dapui.open()
	end
	dap.listeners.before.event_terminated.dapui_config = function()
	    dapui.close()
	end
	dap.listeners.before.event_exited.dapui_config = function()
	    dapui.close()
	end
    end,
}
