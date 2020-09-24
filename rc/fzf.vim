set rtp+=~/.fzf

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nmap <LEADER>f :Files<CR>
nmap <LEADER>C :Commands<CR>
nmap <LEADER>b :Buffers<CR>
nmap <LEADER>B :Buffers<CR>
nmap <LEADER>l :BLines<CR>
nmap <LEADER>L :Lines<CR>
nmap <LEADER>t :BTags<CR>
nmap <LEADER>T :Tags<CR>
nmap <LEADER>H :Helptags<CR>
nmap <LEADER>Y :Filetypes<CR>
nmap <LEADER>g :BCommits<CR>
nmap <LEADER>G :Commits<CR>
nmap <LEADER>S :Snippets<CR>
nmap <LEADER>M :Maps<CR>

nnoremap <LEADER>/ :Rg <C-r><C-w><CR>
nnoremap <LEADER>? :Tags <C-r><C-w><CR>

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Search for files (using fd) with the same filename without extension. Useful
" for switching between .c/cpp and .h files
command! SameFilename call fzf#run({'source': 'fd', 'sink': 'e', 'options': '-q' . expand('%:t:r')})
nmap <LEADER>h :SameFilename<CR>

" Search everything including files get ignored by default
command! FdNoIgnore call fzf#run({'source': 'fd --type f --no-ignore', 'sink': 'e'})
nmap <LEADER>F :FdNoIgnore<CR>
