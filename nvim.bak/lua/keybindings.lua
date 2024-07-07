-- utf8
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

map("n", "<S-v>", ":vsp<CR>", opt)
map("n", "<S-h>", ":sp<CR>", opt)
map("n", "<S-c>", "<C-w>c", opt)

map("n", "<C-Left>", ":vertical resize +10<CR>", opt)
map("n", "<C-Right>", ":vertical resize -10<CR>", opt)
map("n", "<C-Up>", ":resize +10<CR>",opt)
map("n", "<C-Down>", ":resize -10<CR>",opt)

map("n", "<S-Left>", "<C-w>h", opt)
map("n", "<S-Down>", "<C-w>j", opt)
map("n", "<S-Up>", "<C-w>k", opt)
map("n", "<S-Right>", "<C-w>l", opt)

map("v", "<C-c>", "y", opt)
map("v", "<C-x>", "x", opt)
map("n", "<C-v>", "p", opt)
map("i", "<C-v>", [[<Esc>pi]], opt)
map("n", "<C-z>", ":undo<CR>", opt)

map('n', '<S-m>', ':NvimTreeToggle<CR>', opt)

map('t', '<Esc>', '<C-\\><C-N>', opt)
map('n', '<S-t>', ':split term://POWERSHELL<CR>', opt)

map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)

map("n", "<A-Up>", "10k", opt)
map("n", "<A-Down>", "10j", opt)

map("n","<Up>","gk",opt)
map("n","<Down>","gj",opt)

map("n","vv","<C-v>",opt)

vim.api.nvim_exec([[
  autocmd FileType tex nnoremap <buffer> <S-i> :VimtexTocToggle<CR>
]], false)
