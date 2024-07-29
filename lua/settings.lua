-- following equivalent to "set [...]" in init.vim
vim.o.number = true 
vim.o.relativenumber = true 
vim.o.autoindent = true
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.softtabstop = 4
vim.o.termguicolors = true -- nvim terminal adjusts to my normal terminal color scheme, but it then changes my nvim editor color scheme as well. I don't want to change editor scheme.
vim.cmd([[
let schemes = ["darkblue", "default", "vim"]
let seed = srand()
execute "colorscheme" schemes[rand(seed) % len(schemes)]
]]) 
