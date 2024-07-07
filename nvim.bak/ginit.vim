" Enable Mouse
set mouse=a

" Set Editor Font
if exists(':GuiFont')
    GuiFont! FiraCode Nerd Font:h8
    nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
    inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
    xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
    snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv
endif

" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
    GuiPopupmenu 0
endif

if exists("g:neovide")
    " Right Click Context Menu (Copy-Cut-Paste)
    let g:neovide_scroll_animation_length = 0.3
    let s:fontsize = 8
    function! AdjustFontSize(amount)
        let s:fontsize = s:fontsize+a:amount
    :execute "GuiFont! FiraCode Nerd Font:h" . s:fontsize
    endfunction
    noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
    noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
    inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
    inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a
endif

