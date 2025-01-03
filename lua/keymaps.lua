-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows


-- 分屏快捷键
-- 创建 and 关闭分屏
--vim.keymap.set("n", "<S-v>", ":vsp<CR>")
--vim.keymap.set("n", "<S-h>", ":sp<CR>")
--vim.keymap.set("n", "<S-c>", "<C-w>c")

-- 分屏移动
vim.keymap.set("n", "<S-Left>" , "<C-w>h",{ desc = "Move focus to the left window" })
vim.keymap.set("n", "<S-Down>" , "<C-w>j",{ desc = "Move focus to the right window" })
vim.keymap.set("n", "<S-Up>"   , "<C-w>k",{ desc = "Move focus to the lower window" })
vim.keymap.set("n", "<S-Right>", "<C-w>l",{ desc = "Move focus to the upper window" })

-- vim.keymap.set("n", "<S-h>", "<C-w>h", { desc = "Move focus to the left window" })
-- vim.keymap.set("n", "<S-l>", "<C-w>l", { desc = "Move focus to the right window" })
-- vim.keymap.set("n", "<S-j>", "<C-w>j", { desc = "Move focus to the lower window" })
-- vim.keymap.set("n", "<S-k>", "<C-w>k", { desc = "Move focus to the upper window" })

-- 分屏大小设置
vim.keymap.set("n", "<C-Right>", ":vertical resize +10<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -10<CR>")
vim.keymap.set("n", "<C-Up>", ":resize +10<CR>")
vim.keymap.set("n", "<C-Down>", ":resize -10<CR>")

-- Alt 快速移动
vim.keymap.set("n", "<A-k>", "10k")
vim.keymap.set("n", "<A-j>", "10j")

vim.keymap.set("n", "<A-Up>", "10k")
vim.keymap.set("n", "<A-Down>", "10j")

-- 粘贴
vim.keymap.set("i", "<C-v>", [[<Esc>pi]])

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- vim: ts=2 sts=2 sw=2 et
