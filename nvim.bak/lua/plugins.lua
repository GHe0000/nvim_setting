return require('packer').startup(function()
-- packer 调用和更新
use 'wbthomason/packer.nvim'
-- LaTex 相关
use 'lervag/vimtex'
-- Typist 相关
-- use {'BYT0723/typist.nvim',opt = {}}
use {
  'chomosuke/typst-preview.nvim',
  tag = 'v0.3.*',
  run = function() require 'typst-preview'.update() end,
}
use {'kaarmu/typst.vim', ft = {'typst'}}
    -- 语法提示和补全
use {'neoclide/coc.nvim', branch = 'release'}
-- 自动填充和替换
use 'SirVer/ultisnips'
use 'honza/vim-snippets'
-- 高亮复制
use 'machakann/vim-highlightedyank'
-- 编辑时间统计记录
use 'wakatime/vim-wakatime'
-- 配色
use 'morhetz/gruvbox'
use 'glepnir/zephyr-nvim'
--use 'Neur1n/neuims'
-- 自动切换输入法
use {'Neur1n/neuims', run = ':IMSToggle'}
use 'KeitaNakamura/tex-conceal.vim'
-- 底部状态栏
use {'nvim-lualine/lualine.nvim',requires = { 'nvim-tree/nvim-web-devicons', opt = true }}
-- 树状文件列表
use {'nvim-tree/nvim-tree.lua',requires = {'nvim-tree/nvim-web-devicons'}}
-- 更好的语法分析
use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
-- 文件代码搜索
use {'nvim-telescope/telescope.nvim', tag = '0.1.2', requires = {{'nvim-lua/plenary.nvim'}} }
--use 'karb94/neoscroll.nvim'
-- 自动括号
use 'jiangmiao/auto-pairs'
-- 彩色括号
use 'HiPhish/rainbow-delimiters.nvim'
end)
