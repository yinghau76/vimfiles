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

nmap <LEADER>F :Files<CR>
nmap <LEADER>C :Commands<CR>
nmap <LEADER>B :Buffers<CR>
nmap <LEADER>L :Lines<CR>
nmap <LEADER>T :Tags<CR>
nmap <LEADER>H :Helptags<CR>
nmap <LEADER>Y :Filetypes<CR>
nmap <LEADER>G :Commits<CR>
nmap <LEADER>S :Snippets<CR>

nnoremap <LEADER>/ :Ag <C-r><C-w><CR>
nnoremap <LEADER>? :Tags <C-r><C-w><CR>
