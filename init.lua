require("settings")
require("plugins")
require("rust")
require("telescope")


if vim.g.vscode then
    -- VSCode extension
    use "kylechui/nvim-surround"
    
else
    -- ordinary Neovim
end
