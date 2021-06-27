" Function keys

" <F2> = save
nmap <F2> :update<CR>
vmap <F2> <Esc><F2>gv
imap <F2> <C-O><F2>

" <F3> = NERDTree
nmap <F3> :NERDTreeToggle<CR>
imap <F3> <C-O><F3>

" <F4> = Tagbar
nmap <F4> :TagbarToggle<CR>
imap <F4> <C-O><F4>

" <F5> = make
nmap <F5> :make<CR>
imap <F5> <C-O><F5>

" <F6> = switch files
nmap <F6> <C-^>
imap <F6> <C-O><F6>

" <C-F6> = toggle .c/.h (see above) or code/test (see below)
nmap <C-F6> <LEADER>h
imap <C-F6> <C-O><C-F6>

nmap <F7> :cprev<CR>
imap <F7> <C-O><F7>
nmap <F8> :cnext<CR>
imap <F8> <C-O><F8>
nmap <F9> :copen<CR>
imap <F9> <C-O><F9>

imap <F10> <C-O><F9>

" <F11> = toggle 'paste'
set pastetoggle=<F11>

" <F8> = highlight identifier under cursor
" (some file-type dependent autocommands redefine it)
nmap <F12> :let @/='\<'.expand('<cword>').'\>'<bar>set hls<CR>
imap <F12> <C-O><F8>

" Buffer switching
nmap <F13> :bp<CR>
imap <F13> <C-O><F14>
nmap <F15> :bn<CR>
imap <F15> <C-O><F15>

" Buffer deletion
nmap <F14> :bd<CR>
imap <F14> <C-O><F13>

