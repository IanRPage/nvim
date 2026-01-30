vim.o.relativenumber = true
vim.o.autoindent = true
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.softtabstop = 4
vim.o.termguicolors = true -- nvim terminal adjusts to my normal terminal color scheme, but it then
-- changes my nvim editor color scheme as well. I don't want to change
-- editor scheme.
vim.o.hlsearch = true
vim.o.linebreak = true
vim.o.showbreak = "↪ "
vim.o.textwidth = 80
vim.o.pumheight = 10
vim.cmd("colorscheme katoo")

-- -- top colorschemes: my-darkblue, my-zaibatsu, cockatoo, katoo, default
-- local schemes = { "cockatoo", "default", "my-darkblue", "my-zaibatsu" }
--
-- -- uncomment below to implement random colorscheme from `schemes`
-- math.randomseed(os.time())
-- local selected_scheme = schemes[math.random(#schemes)]
-- vim.cmd("colorscheme " .. selected_scheme)

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "cpp",
    "html",
    "typescript",
    "javascript",
    "typescriptreact",
    "javascriptreact"
  },
  callback = function()
    vim.bo.shiftwidth = 2
    vim.bo.softtabstop = 2
    vim.bo.tabstop = 2
  end,
})
