-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\ip\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\share\\lua\\5.1\\?.lua;C:\\Users\\ip\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\ip\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\ip\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\ip\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\ip\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\ip\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\ip\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\ip\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\ip\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "C:\\Users\\ip\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\ip\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = true,
    path = "C:\\Users\\ip\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-treesitter-textobjects" },
    config = { "\27LJ\2\n˜\n\0\0\a\0&\0)6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2$\0005\3\f\0005\4\3\0005\5\4\0005\6\5\0=\6\6\0055\6\a\0=\6\b\5=\5\t\0045\5\n\0=\5\v\4=\4\r\0035\4\14\0005\5\15\0=\5\16\0045\5\17\0=\5\18\4=\4\19\0035\4\20\0005\5\21\0005\6\22\0=\6\23\0055\6\24\0=\6\25\0055\6\26\0=\6\27\5=\5\28\0045\5\29\0=\5\30\0045\5\31\0=\5 \0045\5!\0=\5\"\4=\4#\3=\3%\2B\0\2\1K\0\1\0\16textobjects\1\0\1\16textobjects\0\tmove\22goto_previous_end\1\0\2\a[]\17@class.outer\a[M\20@function.outer\24goto_previous_start\1\0\4\a[f\20@function.outer\a[a\21@parameter.outer\a[[\r@class.*\a[m\20@function.outer\18goto_next_end\1\0\4\a]M\20@function.outer\a]a\21@parameter.outer\a]f\20@function.outer\a][\17@class.outer\20goto_next_start\a]z\1\0\3\16query_group\nfolds\tdesc\14Next fold\nquery\n@fold\a]s\1\0\3\16query_group\vlocals\tdesc\15Next scope\nquery\v@scope\a]]\1\0\2\tdesc\21Next class start\nquery\17@class.outer\1\0\5\a]m\20@function.outer\a]z\0\a]s\0\a]o\f@loop.*\a]]\0\1\0\6\24goto_previous_start\0\20goto_next_start\0\14set_jumps\2\22goto_previous_end\0\venable\2\18goto_next_end\0\tswap\18swap_previous\1\0\1\14<leader>A\21@parameter.inner\14swap_next\1\0\1\14<leader>a\21@parameter.inner\1\0\3\venable\2\18swap_previous\0\14swap_next\0\vselect\1\0\3\tswap\0\vselect\0\tmove\0\20selection_modes\1\0\3\20@function.outer\6V\17@class.outer\n<c-v>\21@parameter.outer\6v\fkeymaps\aas\1\0\3\16query_group\vlocals\tdesc\26Select language scope\nquery\v@scope\aic\1\0\2\tdesc(Select inner part of a class region\nquery\17@class.inner\1\0\5\aas\0\aaf\20@function.outer\aif\20@function.inner\aic\0\aac\17@class.outer\1\0\5\venable\2#include_surrounding_whitespace\2\fkeymaps\0\14lookahead\2\20selection_modes\0\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    only_config = true,
    path = "C:\\Users\\ip\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "C:\\Users\\ip\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\ip\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\ip\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\2\nÁ\3\0\0\5\0\r\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\b\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\0035\4\n\0>\4\a\3=\3\v\0024\3\0\0=\3\f\2B\0\2\1K\0\1\0\fexclude\ftabouts\1\0\2\topen\6<\nclose\6>\1\0\2\topen\6{\nclose\6}\1\0\2\topen\6[\nclose\6]\1\0\2\topen\6(\nclose\6)\1\0\2\topen\6`\nclose\6`\1\0\2\topen\6\"\nclose\6\"\1\0\2\topen\6'\nclose\6'\1\0\v\fexclude\0\21backwards_tabkey\f<S-Tab>\21ignore_beginning\2\vtabkey\n<Tab>\ftabouts\0\15completion\2\21enable_backwards\2\22default_shift_tab\n<C-d>\16default_tab\n<C-t>\21act_as_shift_tab\1\15act_as_tab\2\nsetup\vtabout\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "C:\\Users\\ip\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim",
    wants = { "nvim-treesitter" }
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\ip\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n˜\n\0\0\a\0&\0)6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2$\0005\3\f\0005\4\3\0005\5\4\0005\6\5\0=\6\6\0055\6\a\0=\6\b\5=\5\t\0045\5\n\0=\5\v\4=\4\r\0035\4\14\0005\5\15\0=\5\16\0045\5\17\0=\5\18\4=\4\19\0035\4\20\0005\5\21\0005\6\22\0=\6\23\0055\6\24\0=\6\25\0055\6\26\0=\6\27\5=\5\28\0045\5\29\0=\5\30\0045\5\31\0=\5 \0045\5!\0=\5\"\4=\4#\3=\3%\2B\0\2\1K\0\1\0\16textobjects\1\0\1\16textobjects\0\tmove\22goto_previous_end\1\0\2\a[]\17@class.outer\a[M\20@function.outer\24goto_previous_start\1\0\4\a[f\20@function.outer\a[a\21@parameter.outer\a[[\r@class.*\a[m\20@function.outer\18goto_next_end\1\0\4\a]M\20@function.outer\a]a\21@parameter.outer\a]f\20@function.outer\a][\17@class.outer\20goto_next_start\a]z\1\0\3\16query_group\nfolds\tdesc\14Next fold\nquery\n@fold\a]s\1\0\3\16query_group\vlocals\tdesc\15Next scope\nquery\v@scope\a]]\1\0\2\tdesc\21Next class start\nquery\17@class.outer\1\0\5\a]m\20@function.outer\a]z\0\a]s\0\a]o\f@loop.*\a]]\0\1\0\6\24goto_previous_start\0\20goto_next_start\0\14set_jumps\2\22goto_previous_end\0\venable\2\18goto_next_end\0\tswap\18swap_previous\1\0\1\14<leader>A\21@parameter.inner\14swap_next\1\0\1\14<leader>a\21@parameter.inner\1\0\3\venable\2\18swap_previous\0\14swap_next\0\vselect\1\0\3\tswap\0\vselect\0\tmove\0\20selection_modes\1\0\3\20@function.outer\6V\17@class.outer\n<c-v>\21@parameter.outer\6v\fkeymaps\aas\1\0\3\16query_group\vlocals\tdesc\26Select language scope\nquery\v@scope\aic\1\0\2\tdesc(Select inner part of a class region\nquery\17@class.inner\1\0\5\aas\0\aaf\20@function.outer\aif\20@function.inner\aic\0\aac\17@class.outer\1\0\5\venable\2#include_surrounding_whitespace\2\fkeymaps\0\14lookahead\2\20selection_modes\0\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-cmp ]]
vim.cmd [[ packadd tabout.nvim ]]

-- Config for: tabout.nvim
try_loadstring("\27LJ\2\nÁ\3\0\0\5\0\r\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\b\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\0035\4\n\0>\4\a\3=\3\v\0024\3\0\0=\3\f\2B\0\2\1K\0\1\0\fexclude\ftabouts\1\0\2\topen\6<\nclose\6>\1\0\2\topen\6{\nclose\6}\1\0\2\topen\6[\nclose\6]\1\0\2\topen\6(\nclose\6)\1\0\2\topen\6`\nclose\6`\1\0\2\topen\6\"\nclose\6\"\1\0\2\topen\6'\nclose\6'\1\0\v\fexclude\0\21backwards_tabkey\f<S-Tab>\21ignore_beginning\2\vtabkey\n<Tab>\ftabouts\0\15completion\2\21enable_backwards\2\22default_shift_tab\n<C-d>\16default_tab\n<C-t>\21act_as_shift_tab\1\15act_as_tab\2\nsetup\vtabout\frequire\0", "config", "tabout.nvim")

vim.cmd [[ packadd nvim-treesitter-textobjects ]]
time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-autopairs'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
