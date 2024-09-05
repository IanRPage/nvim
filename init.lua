---- packer.nvim ----
-- require("settings")
-- require("plugins")
-- require("telescope")
---------------------

---- lazy.nvim ----
require("config.lazy")
require("config.settings")
-------------------

if vim.g.vscode then
    -- VSCode extension
    use "kylechui/nvim-surround"
    
else
    -- ordinary Neovim
end
