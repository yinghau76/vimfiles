" Always show status bar
set laststatus=2

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

" Powerline settings
if os == "mac"
    let g:Powerline_symbols = 'fancy'
else
    set t_Co=256
    "let g:Powerline_symbols = 'compatible'
    let g:Powerline_dividers_override = ['>>', '|', '| ', '|']
endif

