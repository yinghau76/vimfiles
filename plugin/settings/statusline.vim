" Always show status bar
set laststatus=2

" Powerline settings
if has('mac')
    let g:Powerline_symbols = 'fancy'
else
    set t_Co=256
    "let g:Powerline_symbols = 'compatible'
    "let g:Powerline_symbols = 'fancy'
    let g:Powerline_dividers_override = ['>>', '|', '| ', '|']
endif

