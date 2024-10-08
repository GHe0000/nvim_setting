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
local package_path_str = "C:\\Users\\GHe\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\share\\lua\\5.1\\?.lua;C:\\Users\\GHe\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\GHe\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\GHe\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\GHe\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\lua\\5.1\\?.so"
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
  ["auto-pairs"] = {
    loaded = true,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  neuims = {
    loaded = true,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neuims",
    url = "https://github.com/Neur1n/neuims"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rainbow-delimiters.nvim"] = {
    loaded = true,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rainbow-delimiters.nvim",
    url = "https://github.com/HiPhish/rainbow-delimiters.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tex-conceal.vim"] = {
    loaded = true,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tex-conceal.vim",
    url = "https://github.com/KeitaNakamura/tex-conceal.vim"
  },
  ["typst-preview.nvim"] = {
    loaded = true,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\typst-preview.nvim",
    url = "https://github.com/chomosuke/typst-preview.nvim"
  },
  ["typst.vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\typst.vim",
    url = "https://github.com/kaarmu/typst.vim"
  },
  ultisnips = {
    loaded = true,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-highlightedyank"] = {
    loaded = true,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-highlightedyank",
    url = "https://github.com/machakann/vim-highlightedyank"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-wakatime",
    url = "https://github.com/wakatime/vim-wakatime"
  },
  vimtex = {
    loaded = true,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  ["zephyr-nvim"] = {
    loaded = true,
    path = "C:\\Users\\GHe\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\zephyr-nvim",
    url = "https://github.com/glepnir/zephyr-nvim"
  }
}

time([[Defining packer_plugins]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType typst ++once lua require("packer.load")({'typst.vim'}, { ft = "typst" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: C:\Users\GHe\AppData\Local\nvim-data\site\pack\packer\opt\typst.vim\ftdetect\typst.vim]], true)
vim.cmd [[source C:\Users\GHe\AppData\Local\nvim-data\site\pack\packer\opt\typst.vim\ftdetect\typst.vim]]
time([[Sourcing ftdetect script at: C:\Users\GHe\AppData\Local\nvim-data\site\pack\packer\opt\typst.vim\ftdetect\typst.vim]], false)
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
