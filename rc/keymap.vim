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

" Arrow keys to switch between Vim window splits easily
"nmap <Up> :wincmd k<CR>
"nmap <Down> :wincmd j<CR>
"nmap <Left> :wincmd h<CR>
"nmap <Right> :wincmd l<CR>

" Open new line after and before current line
nmap <D-Enter> o
imap <D-Enter> <C-O>o
nmap <S-Enter> O<Esc>
imap <S-Enter> <C-O>O

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
nmap <D-j> <M-j>
nmap <D-k> <M-k>
vmap <D-j> <M-j>
vmap <D-k> <M-k>

" CamelCaseMotion
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge
omap <silent> iw <Plug>CamelCaseMotion_iw
xmap <silent> iw <Plug>CamelCaseMotion_iw
omap <silent> ib <Plug>CamelCaseMotion_ib
xmap <silent> ib <Plug>CamelCaseMotion_ib
omap <silent> ie <Plug>CamelCaseMotion_ie
xmap <silent> ie <Plug>CamelCaseMotion_ie

" Easy escaping from https://sanctum.geek.nz/arabesque/vim-anti-patterns/
inoremap jj <Esc>
