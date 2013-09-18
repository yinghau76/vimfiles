" Mac key mapping
noremap! <D-Left> <Home>
noremap! <M-Left> <C-Left>
noremap! <D-Right> <End>
noremap! <M-Right> <C-Right>
inoremap <D-Up> <C-Home>
imap <M-Up> {
inoremap <D-Down> <C-End>
imap <M-Down> }
imap <M-BS> 
imap <D-BS> 
map! <D-v> *
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
noremap <D-Left> <Home>
noremap <M-Left> <C-Left>
noremap <D-Right> <End>
noremap <M-Right> <C-Right>
noremap <D-Up> <C-Home>
map <M-Up> {
noremap <D-Down> <C-End>
map <M-Down> }
vmap <BS> "-d
vmap <D-x> "*d
vmap <D-c> "*y
vmap <D-v> "-d"*P
nmap <D-v> "*P

" Open new line with D-Enter
nmap <D-Enter> o
imap <D-Enter> <Esc>o
"map <CR> o<Esc>
nmap <S-Enter> O<Esc>
imap <S-Enter> <C-O>O

" Buffer navigation
nmap <D-[> :bp<CR>
imap <D-[> <C-O>:bp<CR>
nmap <D-]> :bn<CR>
imap <D-]> <C-O>:bn<CR>
nmap <D-\> :bd<CR>
imap <D-\> <C-O>:bd<CR>

" Insert space easily
nmap <SPACE> i<SPACE>

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
nmap <D-j> <M-j>
nmap <D-k> <M-k>
vmap <D-j> <M-j>
vmap <D-k> <M-k>

" Allow to insert semicolon without moving to the end of line. Good for
" editing in C-like-syntax language.
noremap ; A;
