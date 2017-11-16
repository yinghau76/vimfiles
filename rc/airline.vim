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

if os == "linux"
    let g:airline_symbols_ascii = 1
endif
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled = 1
