" Airline settings

function! GetRunningOS()
  if has("win32")
    return "win"
  endif
  if has("unix")
    if system('uname')=~'Darwin'
      return "mac"
    else
      return "linux"
    endif
  endif
endfunction

let os = GetRunningOS()

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
if os == "mac"
    let g:airline_powerline_fonts = 1
endif
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled = 1
