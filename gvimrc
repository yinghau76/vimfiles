set guitablabel=%M%t
set vb t_vb= " error bell off and no screen flash

if has("gui_macvim")
  let g:my_guifont="Consolas:h17"
elseif has("gui_gtk")
  let g:my_guifont="Monospace 12" " for ubuntu
end

let &guifont=g:my_guifont

if has("gui_macvim")
  let g:my_guifont_large="Monaco:h25"          " for Mac
elseif has("gui_gtk")
  let g:my_guifont_large="Monospace 22"        " for ubuntu
end

" toggle between working mode and presentation mode
" borrowed from skalnik(https://github.com/skalnik)
"
" font size change only work for GUI-version Vim

function! PresentationModeOn()
  let &guifont=g:my_guifont_large
endfunction

function! PresentationModeOff()
  let &guifont=g:my_guifont
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
