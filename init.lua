-- NOTE: I have no fucking clue how to use luaJIT for neovim, but I will eventually learn. I just really enjoy using neovim as my text editor and it would be nice to have it set up to my liking.

-- Eventually want to have my init.lua file just require() plugins from seperate directory that contains all the plugins. This sounds	organized to me


-- this code states that if vscode exists, to use VSCode extension (?), else, normal neovim. 
--if exists('g:vscode')
--    " VSCode extension
--else
--    " ordinary neovim
--endif


-- following equivalent to "set [...]" in init.vim
vim.o.number = true 
vim.o.relativenumber = true 
vim.o.autoindent = true
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.softtabstop = 4
vim.o.termguicolors = true -- nvim terminal adjusts to my normal terminal color scheme, but it then changes my nvim editor color scheme as well. I don't want to change editor scheme.
--vim.g.schemes = {"pablo", "torte"}
vim.cmd([[
let schemes = ["pablo", "torte"]
let seed = srand()
execute "colorscheme" schemes[rand(seed) % len(schemes)]
]]) 
-- look into statusline option

