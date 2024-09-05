require("settings")
require("plugins")
require("telescope")


if vim.g.vscode then
    -- VSCode extension
    use "kylechui/nvim-surround"
    
else
    -- ordinary Neovim
end
