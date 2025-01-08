-- NOTE: 设置使用 GUI 时加载的配置

if vim.g.neovide then
	vim.o.guifont = "FiraCode Nerd Font:h12"
	vim.g.neovide_transparency = 0.9
	vim.g.transparency = 0.9 -- 窗口透明度
	-- 在插入模式时关闭动画，若不关闭在快速输入时有概率崩溃
	vim.g.neovide_cursor_animate_in_insert_mode = false
	vim.g.neovide_position_animation_length = 0.15
	vim.g.neovide_scroll_animation_length = 0.3
	vim.g.neovide_refresh_rate = 30 -- 刷新率
	vim.g.neovide_refresh_rate_idle = 5 -- 空闲刷新率
	vim.g.neovide_input_ime = true
else
	vim.cmd [[
		highlight Normal guibg=None
	]]
end
