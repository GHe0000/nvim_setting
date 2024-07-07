-- NOTE: 设置使用 GUI 时加载的配置

if vim.g.neovide then
	vim.o.guifont = "FiraCode Nerd Font:h12"
	vim.g.neovide_transparency = 0.9
	vim.g.transparency = 0.9 -- 透明度
	vim.g.neovide_position_animation_length = 0.15
	vim.g.neovide_scroll_animation_length = 0.3
end
