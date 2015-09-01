set nocompatible
filetype off          " Disabled for Vundle

let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle..."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'fatih/vim-go'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'bling/vim-airline'
" Automatic closing of quotes, parenthesis, brackets, etc.
Bundle 'Raimondi/delimitMate'
Bundle 'derekwyatt/vim-scala'
Bundle 'gmarik/vundle'
Bundle 'grayrest/vim-syntastic'
Bundle 'groenewege/vim-less'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'mileszs/ack.vim'
Bundle 'rstacruz/sparkup'
Bundle 'scrooloose/nerdtree'
Bundle 'slim-template/vim-slim'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-vividchalk'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/ZoomWin'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'vim-scripts/camelcasemotion'
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/mru.vim'
" Rapid toggling between the two different styles of ruby blocks
Bundle 'jgdavey/vim-blockle'
Bundle 'majutsushi/tagbar'
Bundle 'Valloric/YouCompleteMe'
" Visually select increasingly larger regions of text
Bundle 'terryma/vim-expand-region'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'

filetype plugin indent on " Enable filetype-specific plugin and indenting
syntax on " Enable syntax highlighting

" If you are using ZSH you may find that MacVim is not loading your rvm configuration correctly. This may be
" because you are sourcing the rvm scripts in your .zshrc file. MacVim does not source the .zshrc file, but
" will source the .zshenv file. To ensure that MacVim correctly loads rvm for its shell, and running ruby
" commands, source the rvm scripts from withing .zshenv. Alternatively, you can add:
set shell=/bin/sh

set background=dark
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=tw
set langmenu=none
set mouse=a
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set termencoding=utf-8

set history=1000
set undolevels=1000
set autowrite

set ruler
set showmode
set showcmd
set nowrap        " don't wrap lines
set number        " always show line numbers
set showmatch     " set show matching parenthesis

set laststatus=2  " always show status bar

set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise

set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set nobackup
set noswapfile
set autowriteall  " auto save file when switching buffers

" tab and indent settings
set softtabstop=4
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set expandtab
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop

" change the mapleader from \ to ,
let mapleader=","

" default colorscheme
colorscheme molokai

" avoid loading matchparen plugin
let loaded_matchparen = 1

" 2-space indent for zencoding
let g:user_zen_settings = {
\  'indentation' : '  '
\}

" Make CR in {|} to open a new line
let delimitMate_expand_cr = 1

behave mswin


" ## auto-generated

" ## ack.vim ##

" Ack

let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" ## airline.vim ##

" Airline settings

function! GetRunningOS()
  if has("win32")
    return "win"
  endif
  if has("unix")
    if system('uname')=~'Darwin'
      return "mac"
    else
      return "linux"
    endif
  endif
endfunction

let os = GetRunningOS()

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
if os == "mac"
    let g:airline_powerline_fonts = 1
endif
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled = 1

" ## commandline.vim ##

" Activate TAB auto-completion for file paths
set wildmode=list:longest

" This lets you use w!! to do that after you opened the file already
cmap w!! w !sudo tee % >/dev/null

" ## completion.vim ##

" clang_compelte: open qfix window automatically
let g:clang_complete_copen = 1
let s:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'
if isdirectory(s:clang_library_path)
    let g:clang_library_path=s:clang_library_path
endif

" ## cscope_maps.vim ##

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CSCOPE settings for vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" This file contains some boilerplate settings for vim's cscope interface,
" plus some keyboard mappings that I've found useful.
"
" USAGE:
" -- vim 6:     Stick this file in your ~/.vim/plugin directory (or in a
"               'plugin' directory in some other directory that is in your
"               'runtimepath'.
"
" -- vim 5:     Stick this file somewhere and 'source cscope.vim' it from
"               your ~/.vimrc file (or cut and paste it into your .vimrc).
"
" NOTE:
" These key maps use multiple keystrokes (2 or 3 keys).  If you find that vim
" keeps timing you out before you can complete them, try changing your timeout
" settings, as explained below.
"
" Happy cscoping,
"
" Jason Duell       jduell@alumni.princeton.edu     2002/3/7
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" This tests to see if vim was configured with the '--enable-cscope' option
" when it was compiled.  If it wasn't, time to recompile vim...
if has("cscope")

    """"""""""""" Standard cscope/vim boilerplate

    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag

    " check cscope for definition of a symbol before checking ctags: set to 1
    " if you want the reverse search order.
    set csto=0

    " add any cscope database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add the database pointed to by environment variable
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    " show msg when any other cscope db added
    set cscopeverbose


    """"""""""""" My cscope/vim key mappings
    "
    " The following maps all invoke one of the following cscope search types:
    "
    "   's'   symbol: find all references to the token under cursor
    "   'g'   global: find global definition(s) of the token under cursor
    "   'c'   calls:  find all calls to the function name under cursor
    "   't'   text:   find all instances of the text under cursor
    "   'e'   egrep:  egrep search for the word under cursor
    "   'f'   file:   open the filename under cursor
    "   'i'   includes: find files that include the filename under cursor
    "   'd'   called: find functions that function under cursor calls
    "
    " Below are three sets of the maps: one set that just jumps to your
    " search result, one that splits the existing vim window horizontally and
    " diplays your search result in the new window, and one that does the same
    " thing, but does a vertical split instead (vim 6 only).
    "
    " I've used CTRL-\ and CTRL-@ as the starting keys for these maps, as it's
    " unlikely that you need their default mappings (CTRL-\'s default use is
    " as part of CTRL-\ CTRL-N typemap, which basically just does the same
    " thing as hitting 'escape': CTRL-@ doesn't seem to have any default use).
    " If you don't like using 'CTRL-@' or CTRL-\, , you can change some or all
    " of these maps to use other keys.  One likely candidate is 'CTRL-_'
    " (which also maps to CTRL-/, which is easier to type).  By default it is
    " used to switch between Hebrew and English keyboard mode.
    "
    " All of the maps involving the <cfile> macro use '^<cfile>$': this is so
    " that searches over '#include <time.h>" return only references to
    " 'time.h', and not 'sys/time.h', etc. (by default cscope will return all
    " files that contain 'time.h' as part of their name).


    " To do the first type of search, hit 'CTRL-\', followed by one of the
    " cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
    " search will be displayed in the current window.  You can use CTRL-T to
    " go back to where you were before the search.
    "

    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>


    " Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
    " makes the vim window split horizontally, with search result displayed in
    " the new window.
    "
    " (Note: earlier versions of vim may not have the :scs command, but it
    " can be simulated roughly via:
    "    nmap <C-@>s <C-W><C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>

    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>


    " Hitting CTRL-space *twice* before the search type does a vertical
    " split instead of a horizontal one (vim 6 and up only)
    "
    " (Note: you may wish to put a 'set splitright' in your .vimrc
    " if you prefer the new window on the right instead of the left

    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>


    """"""""""""" key map timeouts
    "
    " By default Vim will only wait 1 second for each keystroke in a mapping.
    " You may find that too short with the above typemaps.  If so, you should
    " either turn off mapping timeouts via 'notimeout'.
    "
    "set notimeout
    "
    " Or, you can keep timeouts, by uncommenting the timeoutlen line below,
    " with your own personal favorite value (in milliseconds):
    "
    "set timeoutlen=4000
    "
    " Either way, since mapping timeout settings by default also set the
    " timeouts for multicharacter 'keys codes' (like <F1>), you should also
    " set ttimeout and ttimeoutlen: otherwise, you will experience strange
    " delays as vim waits for a keystroke after you hit ESC (it will be
    " waiting to see if the ESC is actually part of a key code like <F1>).
    "
    "set ttimeout
    "
    " personally, I find a tenth of a second to work well for key code
    " timeouts. If you experience problems and have a slow terminal or network
    " connection, set it higher.  If you don't set ttimeoutlen, the value for
    " timeoutlent (default: 1000 = 1 second, which is sluggish) is used.
    "
    "set ttimeoutlen=100

endif



" ## ctrlp.vim ##

" CtrlP can open selected file in the window created by NERD_tree
let g:ctrlp_reuse_window = 'NERD_tree'

" When starting up, CtrlP sets its local working directory according to this variable: >
" 1 - the directory of the current file.
" 0 - don't manage working directory.
let g:ctrlp_working_path_mode = 0 


" ## cursor.vim ##

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" ## erb.vim ##

" eRuby
autocmd! BufNewFile,BufRead *.erb set filetype=eruby.html

" ## fat-finger.vim ##

if has("user_commands")
    command! -bang -nargs=? -complete=file E e<bang> <args>
    command! -bang -nargs=? -complete=file W w<bang> <args>
    command! -bang -nargs=? -complete=file Wq wq<bang> <args>
    command! -bang -nargs=? -complete=file WQ wq<bang> <args>
    command! -bang Wa wa<bang>
    command! -bang WA wa<bang>
    command! -bang Q q<bang>
    command! -bang QA qa<bang>
    command! -bang Qa qa<bang>
endif

" ## filetypes.vim ##

" File-type specific settings

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" Recognize Gradle
au BufNewFile,BufRead *.gradle setf groovy

" Ninja
au BufRead,BufNewFile *.ninja set filetype=ninja

" Use ggVGgq to format the entire file
au FileType c,cpp,java set formatprg=uncrustify\ -c\ ~/.uncrustify\ --no-backup\ 2>/dev/null


" ## fn.vim ##

" Function keys                                                 {{{2

" <F2> = save
nmap            <F2>            :BufExplorer<CR>
nmap            <F3>            :NERDTreeToggle<CR>
nmap            <F4>            :TagbarToggle<CR>

nmap            <F5>            :make<CR>:copen<CR>

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


" ## golang.vim ##

autocmd Filetype go set makeprg=go\ build\ ./...
autocmd FileType go set ai sw=2 sts=2 et ts=2

function! s:GoVet()
    cexpr system("go vet " . shellescape(expand('%')))
    copen
endfunction
command! GoVet :call s:GoVet()

function! s:GoLint()
    cexpr system("golint " . shellescape(expand('%')))
    copen
endfunction
command! GoLint :call s:GoLint()

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
" let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_command = "goimports"

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" ## highlight.vim ##


" Highlight group debugging                                     {{{2
function! s:SynAttrs(id)
  return ""
    \ . (synIDattr(a:id, "font") != "" ? ' font:' . synIDattr(a:id, "font") : "")
    \ . (synIDattr(a:id, "fg") != ""  ? ' fg:' . synIDattr(a:id, "fg") : "")
    \ . (synIDattr(a:id, "bg") != ""  ? ' bg:' . synIDattr(a:id, "bg") : "")
    \ . (synIDattr(a:id, "sp") != ""  ? ' sp:' . synIDattr(a:id, "sp") : "")
    \ . (synIDattr(a:id, "bold") ? " bold" : "")
    \ . (synIDattr(a:id, "italic") ? " italic" : "")
    \ . (synIDattr(a:id, "reverse") ? " reverse" : "")
    \ . (synIDattr(a:id, "standout") ? " standout" : "")
    \ . (synIDattr(a:id, "underline") ? " underline" : "")
    \ . (synIDattr(a:id, "undercurl") ? " undercurl" : "")
endf
function! s:ShowHighlightGroup()
  let hi = synID(line("."), col("."), 1)
  let trans = synID(line("."), col("."), 0)
  let lo = synIDtrans(hi)
  " In my experiments s:SynAttrs() always returns "" for hi and trans
  echo "hi<" . synIDattr(hi, "name") . '>'
    \ . s:SynAttrs(hi)
    \ . ' trans<' . synIDattr(trans, "name") . '>'
    \ . s:SynAttrs(trans)
    \ . ' lo<' . synIDattr(lo, "name") . '>'
    \ . s:SynAttrs(lo)
endf
function! s:ShowSyntaxStack()
  for id in synstack(line("."), col("."))
    echo printf("%-20s %s", synIDattr(id, "name"), s:SynAttrs(synIDtrans(id)))
  endfor
endf
command! ShowHighlightGroup call s:ShowHighlightGroup()
command! ShowSyntaxStack call s:ShowSyntaxStack()


" ## html.vim ##

" HTML
autocmd FileType html set ai sw=2 sts=2 et


" ## java.vim ##

" Java
autocmd FileType java set ai sw=4 sts=4 et ts=4

" autocmd FileType java colorscheme slate
" autocmd FileType java set foldmethod=syntax

" ## keymap.vim ##

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

" Allow to insert semicolon without moving to the end of line. Good for
" editing in C-like-syntax language.
noremap ; A;

" Region expanding
map v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" ## leaders.vim ##

" Quickly edit/reload the vimrc file
nmap <SLIENT> <LEADER>ev :tabe $HOME/.vim/vimrc<CR>
nmap <SLIENT> <LEADER>sv :so $MYVIMRC<CR>

" Alternative for 'set autochdir'
nnoremap <LEADER>cd :cd %:p:h<CR>:pwd<CR>

" Remove the Windows ^M - when the encodings gets messed up
noremap <LEADER>rm mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Toggle between .c (.cc, .cpp) and .h
" ToggleHeader defined in $HOME/.vim/plugin/cpph.vim
map <LEADER>h :call ToggleHeader()<CR>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <LEADER>te :tabedit <c-r>=expand("%:p:h")<cr>/

nnoremap <LEADER>/ :Ack <C-r><C-w><CR>
nnoremap <LEADER>be :BufExplorer<CR>

map <LEADER>tb :TagbarToggle<CR>

" Quickly open file
nnoremap <LEADER>o :CtrlP<CR>

" Save file
nnoremap <LEADER>w :w<CR>

" Close file
nnoremap <LEADER>q :bd<CR>

" Enter visual line mode easily
nmap <LEADER><LEADER> V

" Shortcuts to quit
nmap <LEADER>q :q<CR>
nmap <LEADER>Q :qa!<CR>

" ## nerdtree.vim ##

" NERDTree
map <LEADER>n :NERDTree<CR>

" ## objc.vim ##

" Objective-C
autocmd FileType objc set ai sw=4 sts=4 et ts=4

" ## octopress.vim ##

" Octopress
autocmd BufNewFile,BufRead */_posts/*.markdown set syntax=octopress


" ## quickfix.vim ##


" QuickFix
nmap <LEADER>co :QFix<CR>
nmap <LEADER>ct :call QFixToggle(1)<CR>
command! -bang -nargs=? QFix call QFixToggle(<bang>0)

function! QFixToggle(forced)
    if exists("g:qfix_win") && a:forced != 0
        cclose
    else
        if exists("g:my_quickfix_win_height")
            execute "copen ".g:my_quickfix_win_height
        else
            copen
        endif
    endif
endfunction
 
augroup QFixToggle
    autocmd!
    autocmd BufWinEnter quickfix let g:qfix_win = bufnr("$")
    autocmd BufWinLeave * if exists("g:qfix_win") && expand("<abuf>") == g:qfix_win | unlet! g:qfix_win | endif
augroup END

" ## ruby.vim ##

" Ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et

autocmd BufNewFile,BufRead *.thor set filetype=ruby

" ## syntastic.vim ##

" syntastic
let g:syntastic_enable_signs=1
" let g:syntastic_auto_loc_list=1
let g:syntastic_quiet_warnings=1


" ## ultisnips.vim ##

" Better key bindings for UtilSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


" ## ycm.vim ##

let g:ycm_autoclose_preview_window_after_insertion=1

" make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']

let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
