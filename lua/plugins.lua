---------------- Bootstrap code ----------------
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	vim.cmd [[packadd packer.nvim]]
	return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

------------------------------------------------

-- makes packer use a popup window
packer.init({
    display = {
	open_fn = function()
	    return require("packer.util").float({ border = "rounded" })
    	end,
    },
})

---------------- Plugins ----------------
return packer.startup(function(use)

    use "wbthomason/packer.nvim" -- load packer.nvim

    use {
      'nvim-telescope/telescope.nvim', branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'neovim/nvim-lspconfig'
    use "hrsh7th/nvim-cmp"
    use {
	"hrsh7th/cmp-nvim-lsp", -- cmp LSP completion
    	"hrsh7th/cmp-path", -- cmp Path completion
    	"hrsh7th/cmp-buffer",
    	after = { "hrsh7th/nvim-cmp" },
    	requires = { "hrsh7th/nvim-cmp" },
    }

    use {
	"kylechui/nvim-surround",
	tag = "*", -- Use for stability; omit to use `main` branch for the latest features
	config = function()
	    require("nvim-surround").setup {}
	end
    }

    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
	config = function()
	    require("nvim-treesitter.configs").setup {
		textobjects = {
		    select = {
			enable = true,

			lookahead = true,

			keymaps = {
			    ["af"] = "@function.outer",
			    ["if"] = "@function.inner",
			    ["ac"] = "@class.outer",
			    ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
			    ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
			},
			selection_modes = {
			    ['@parameter.outer'] = 'v', -- charwise
			    ['@function.outer'] = 'V', -- linewise
			    ['@class.outer'] = '<c-v>', -- blockwise
			},
			include_surrounding_whitespace = true,
		    },
		    swap = {
			enable = true,
			swap_next = {
			    ["<leader>a"] = "@parameter.inner",
			},
			swap_previous = {
			    ["<leader>A"] = "@parameter.inner",
			},
		    },
		    move = {
			enable = true,
			set_jumps = true, -- whether to set jumps in the jumplist
			goto_next_start = {
			    ["]m"] = "@function.outer",
			    ["]]"] = { query = "@class.outer", desc = "Next class start" },
			    ["]o"] = "@loop.*",
			    ["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
			    ["]z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
			},
			goto_next_end = {
			    ["]M"] = "@function.outer",
			    ["]["] = "@class.outer",

			    ["]f"] = "@function.outer",
			    ["]a"] = "@parameter.outer",
			},
			goto_previous_start = {
			    ["[m"] = "@function.outer",
			    ["[["] = "@class.*",

			    ["[f"] = "@function.outer",
			    ["[a"] = "@parameter.outer",
			},
			goto_previous_end = {
			    ["[M"] = "@function.outer",
			    ["[]"] = "@class.outer",
			},
		    },
		}
	    }
	end,
    }

    use {
	"nvim-treesitter/nvim-treesitter-textobjects",
	after = "nvim-treesitter",
	requires = "nvim-treesitter/nvim-treesitter",
    }

    use {
	'abecodes/tabout.nvim',
	config = function()
	    require('tabout').setup {
		tabkey = '<Tab>', -- key to trigger tabout, set to an empty string to disable
		backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
		act_as_tab = true, -- shift content if tab out is not possible
		act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
		default_tab = '<C-t>', -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
		default_shift_tab = '<C-d>', -- reverse shift default action,
		enable_backwards = true, -- well ...
		completion = true, -- if the tabkey is used in a completion pum
		tabouts = {
		    {open = "'", close = "'"},
		    {open = '"', close = '"'},
		    {open = '`', close = '`'},
		    {open = '(', close = ')'},
		    {open = '[', close = ']'},
		    {open = '{', close = '}'},
		    {open = '<', close = '>'}
		},
		ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
		exclude = {} -- tabout will ignore these filetypes
	    }
	end,
	wants = {'nvim-treesitter'}, -- (optional) or require if not used so far
	after = {'nvim-cmp'} -- if a completion plugin is using tabs load it before
    }

    ------ Debugging ------
    use 'nvim-lua/plenary.nvim'
    use 'mfussenegger/nvim-dap'
    -----------------------

    if PACKER_BOOTSTRAP then
	require("packer").sync()
    end
end)
-----------------------------------------
