-- NOTE: 必须在加载时首先设置，否则会出现问题

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 使用 Nerd Font 字体
vim.g.have_nerd_font = true

-- Windows 下默认终端设置为 Powershell
-- local powershell_options = {
-- 	shell = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell",
-- 	shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
-- 	shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
-- 	shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
-- 	shellquote = "",
-- 	shellxquote = "",
-- }

-- for option, value in pairs(powershell_options) do
-- 	vim.opt[option] = value
-- end

require("options")
require("keymaps")
require("lazy-bootstrap")
require("lazy-plugins")

-- GUI 相关配置
require("ginit")
