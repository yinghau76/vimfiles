" Function keys                                                 {{{2

" <F2> = save
nmap            <F2>            :update<CR>
imap            <F2>            <C-O><F2>

" <F3> = turn off search highlighting
nmap            <F3>            :BufExplorer<CR>
imap            <F3>            <C-O><F3>
" <S-F3> = turn off location list
nmap            <S-F3>          :lclose<CR>
imap            <S-F3>          <C-O><S-F3>

" <F4> = next quick fix
nmap            <F4>            :cn<CR>
imap            <F4>            <C-O><F4>
" <S-F4> = prev quick fix
nmap            <S-F4>          :cp<CR>
imap            <S-F4>          <C-O><S-F4>
" <C-F4> = turn off quickfix
nmap            <C-F4>          :cclose<CR>
imap            <C-F4>          <C-O><C-F4>

" <F5> Ack search
nmap            <F5>            :shell<CR>
imap            <F5>            <C-O><F5>

" <F6> = switch files
nmap            <F6>            <C-^>
imap            <F6>            <C-O><F6>
" <C-F6> = toggle .c/.h (see above) or code/test (see below)
nmap            <C-F6>          <LEADER>h
imap            <C-F6>          <C-O><C-F6>

" <F7> = jump to tag/filename+linenumber in the clipboard
nmap            <F7>            :ClipboardTest<CR>

" <F8> = highlight identifier under cursor
" (some file-type dependent autocommands redefine it)
nmap            <F8>            :let @/='\<'.expand('<cword>').'\>'<bar>set hls<CR>

" <F9> = make
nmap            <F9>    :make<CR>
imap            <F9>    <C-O><F9>

" <F11> = toggle 'paste'
set pastetoggle=<F11>

" <F12> = show the Unicode name of the character under cursor
nmap            <F12>           :UnicodeName<CR>
" <S-F12> = show highlight group under cursor
nmap            <S-F12>         :ShowHighlightGroup<CR>
" <C-F12> = show syntax stack under cursor
nmap            <C-F12>         :ShowSyntaxStack<CR>

nmap            <F13>    :bd<CR>
imap            <F13>    <C-O><F13>
nmap            <F14>    :bp<CR>
imap            <F14>    <C-O><F14>
nmap            <F15>    :bn<CR>
imap            <F15>    <C-O><F15>

