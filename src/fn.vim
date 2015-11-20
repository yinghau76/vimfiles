" Function keys

" <F2> = save
nmap <F2> :update<CR>
vmap <F2> <Esc><F2>gv
imap <F2> <C-o><F2>

nmap <F3> :NERDTreeToggle<CR>
nmap <F4> :TagbarToggle<CR>

nmap <F5> :make<CR>
imap <F5> <C-O><F5>

" <F6> = switch files
nmap <F6> <C-^>
imap <F6> <C-O><F6>
" <C-F6> = toggle .c/.h (see above) or code/test (see below)
nmap <C-F6> <LEADER>h
imap <C-F6> <C-O><C-F6>

" <F7> = jump to tag/filename+linenumber in the clipboard
nmap <F7> :ClipboardTest<CR>

" <F8> = highlight identifier under cursor
" (some file-type dependent autocommands redefine it)
nmap <F8> :let @/='\<'.expand('<cword>').'\>'<bar>set hls<CR>

" <F11> = toggle 'paste'
set pastetoggle=<F11>

nmap <F13> :bd<CR>
imap <F13> <C-O><F13>
nmap <F14> :bp<CR>
imap <F14> <C-O><F14>
nmap <F15> :bn<CR>
imap <F15> <C-O><F15>

