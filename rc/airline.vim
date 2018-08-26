" Airline settings

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.notexists = '~'
let g:airline_detect_paste = 1
let g:airline#extensions#tabline#enabled = 1

nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

