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

-- Have packer use a popup window
packer.init({
    display = {
	open_fn = function()
	    return require("packer.util").float({ border = "rounded" })
    	end,
    },
})

-------- Install plugins here --------
return packer.startup(function(use)

    use "wbthomason/packer.nvim" -- Have packer manage itself	
    use 'neovim/nvim-lspconfig'
    use "hrsh7th/nvim-cmp"
    use({
	-- cmp LSP completion
	"hrsh7th/cmp-nvim-lsp",
	-- cmp Snippet completion
	"hrsh7th/cmp-vsnip",
	-- cmp Path completion
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-buffer",
	after = { "hrsh7th/nvim-cmp" },
	requires = { "hrsh7th/nvim-cmp" },
    })

use("simrat39/rust-tools.nvim")

    if PACKER_BOOTSTRAP then
	require("packer").sync()
    end
end)
