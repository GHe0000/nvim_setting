return require('packer').startup(function()
use 'wbthomason/packer.nvim'
use 'lervag/vimtex'
use {'neoclide/coc.nvim', branch = 'release'}
use 'SirVer/ultisnips'
use 'honza/vim-snippets'
use 'machakann/vim-highlightedyank'
use 'wakatime/vim-wakatime'
use 'morhetz/gruvbox'
use 'glepnir/zephyr-nvim'
--use 'Neur1n/neuims'
use {'Neur1n/neuims', run = ':IMSToggle'}
use 'KeitaNakamura/tex-conceal.vim'
use {'nvim-lualine/lualine.nvim',requires = { 'nvim-tree/nvim-web-devicons', opt = true }}
use {'nvim-tree/nvim-tree.lua',requires = {'nvim-tree/nvim-web-devicons'}}
use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
use {'nvim-telescope/telescope.nvim', tag = '0.1.2', requires = {{'nvim-lua/plenary.nvim'}} }
--use 'karb94/neoscroll.nvim'
end)
