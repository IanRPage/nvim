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

    use 'neovim/nvim-lspconfig' -- native LSP support
    use "hrsh7th/nvim-cmp"
    use {
	"hrsh7th/cmp-nvim-lsp", -- cmp LSP completion
    	-- "hrsh7th/cmp-vsnip", -- cmp Snippet completion
    	"hrsh7th/cmp-path", -- cmp Path completion
    	"hrsh7th/cmp-buffer",
    	after = { "hrsh7th/nvim-cmp" },
    	requires = { "hrsh7th/nvim-cmp" },
    } 
    use {
        "windwp/nvim-autopairs",
	event = "InsertEnter",
	config = function()
	    require("nvim-autopairs").setup {}
	end
    }
    use 'simrat39/rust-tools.nvim' -- rust LSP and other stuff

    ------ Debugging ------
    use 'nvim-lua/plenary.nvim'
    use 'mfussenegger/nvim-dap'
    -----------------------

    if PACKER_BOOTSTRAP then
	require("packer").sync()
    end
end)
-----------------------------------------
