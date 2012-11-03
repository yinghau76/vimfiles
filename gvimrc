set guitablabel=%M%t
" error bell off and no screen flash
set vb t_vb=

if has("gui_macvim")

  " disable IM while leaving insert mode
  " autocmd InsertEnter * set noimdisable
  " autocmd InsertLeave * set imdisable

  " set guifont=Menlo\ Regular\ for\ Powerline:h15
  "set guifont=Inconsolata-dz\ for\ Powerline:h15
  " set guifont=Inconsolata-dz\ for\ Powerline:h14
  set guifont=Menlo\ Regular\ for\ Powerline:h14

endif

" toggle between working mode and presentation mode
" borrowed from skalnik(https://github.com/skalnik)
"
" font size change only work for GUI-version Vim

function! PresentationModeOn()
  if has("gui_macvim")
    set guifont=Monaco:h25           " for Mac
  elseif has("gui_gtk")
    set guifont=Monospace\ 22        " for ubuntu
  end
endfunction

function! PresentationModeOff()
  if has("gui_macvim")
    set guifont=Consolas:h16         " for Mac
  elseif has("gui_gtk")
    set guifont=Monospace\ 14        " for ubuntu
  end
endfunction

function! TogglePresentationMode()
  if !exists('w:present')
    let w:present=0
  endif

  if w:present==0
    call PresentationModeOn()
    let w:present=1
  else
    call PresentationModeOff()
    let w:present=0
  endif
endfunction

map <LEADER>z :call TogglePresentationMode()<CR>
