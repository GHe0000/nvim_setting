filetype plugin indent on

lua require('basic')
lua require('keybindings')
lua require('plugins')

colorscheme gruvbox

"highlight Normal ctermbg=None guibg=None
"let g:neovide_transparency = 1

let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = 'D:\Software\Python311\python.exe'

lua require('lualine').setup()
lua require('plugin-config/nvim-tree')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/cocnvim')
lua require('plugin-config/telescope')

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

let g:tex_flavor = 'latex'
let g:vimtex_quickfix_mode = 0

let g:vimtex_view_general_viewer = 'SumatraPDF'

set conceallevel=2
let g:tex_conceal='abdmg'
let g:vimtex_syntax_conceal = {"math_bounds":0}


let g:vimtex_imaps_enabled = 1
let g:vimtex_imaps_in_vimtex = 1
let g:vimtex_imaps_leader = '`'

" Enable soft wrap for tex files
autocmd FileType tex setlocal wrap ts=2 softtabstop=2 shiftwidth=2
autocmd FileType c,cpp setlocal ts=2 softtabstop=2 shiftwidth=2

autocmd VimEnter * IMSToggle
