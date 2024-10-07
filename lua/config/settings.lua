-- following equivalent to "set [...]" in init.vim
vim.o.number = true 
vim.o.relativenumber = true 
vim.o.autoindent = true
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.softtabstop = 4
vim.o.termguicolors = true -- nvim terminal adjusts to my normal terminal color scheme, but it then changes my nvim editor color scheme as well. I don't want to change editor scheme.
vim.o.hlsearch = true
vim.o.linebreak = true
vim.o.showbreak = "↪ "


-- colorscheme selection between favorite themes: my-darkblue, my-zaibatsu, cockatoo
local schemes = {"my-zaibatsu", "cockatoo", "slate"}
math.randomseed(os.time())
local selected_scheme = schemes[math.random(#schemes)]
vim.cmd("colorscheme " .. selected_scheme)

