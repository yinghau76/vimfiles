" Airline settings

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.notexists = '~'
let g:airline_detect_paste = 1
let g:airline#extensions#tabline#enabled = 1

function! s:check_defined(variable, default)
  if !exists(a:variable)
    let {a:variable} = a:default
  endif
endfunction

if !get(g:, 'airline_powerline_fonts', 0)
  " Symbols for ASCII terminals
  call s:check_defined('g:airline_left_sep', "")
  call s:check_defined('g:airline_left_alt_sep', "")
  call s:check_defined('g:airline_right_sep', "")
  call s:check_defined('g:airline_right_alt_sep', "")
  call extend(g:airline_symbols, {
           \ 'readonly': 'RO',
           \ 'whitespace': '!',
           \ 'linenr': 'ln ',
           \ 'maxlinenr': ' :',
           \ 'branch': '',
           \ 'notexists': '?',
           \ 'crypt': 'cr',
           \ }, 'keep')
endif

