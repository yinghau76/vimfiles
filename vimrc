set nocompatible
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugin

" Pathogen setup
call pathogen#infect() 

if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim

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

let &cpo=s:cpo_save
unlet s:cpo_save

set background=dark
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=tw
set langmenu=none
set mouse=a
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set termencoding=utf-8
set visualbell

set history=1000
set undolevels=1000
set autowrite

set ruler
set showmode
set showcmd
set nowrap        " don't wrap lines
set number        " always show line numbers
set showmatch     " set show matching parenthesis

set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise

set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set nobackup
set noswapfile

" change the mapleader from \ to ,
let mapleader=","

nmap <silent> <LEADER>/ :nohlsearch<CR>

" Quickly edit/reload the vimrc file
nmap <silent> <LEADER>ev :e $MYVIMRC<CR>
nmap <silent> <LEADER>sv :so $MYVIMRC<CR>

" Alternative for 'set autochdir'
nnoremap <LEADER>cd :cd %:p:h<CR>:pwd<CR>

" Always show status bar
set laststatus=2

" tab and indent settings
set softtabstop=4
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set expandtab 
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop

" Open new line with D-Enter
nmap <D-Enter> o
imap <D-Enter> <Esc>o

" Buffer navigation
nmap <D-[> :bp<CR>
nmap <D-]> :bn<CR>
nmap <D-\> :bd<CR>

" Easy scrolling
nmap <SPACE> <C-D>
nmap <S-SPACE> <C-U>

" Activate TAB auto-completion for file paths
set wildmode=list:longest

" vim: set ft=vim :
" TagList
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Close_On_Select = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_WinWidth = 50
map <LEADER>tl :TlistToggle<CR>

" vim-fuzzyfinder plugin
map <LEADER>f :FufFile **/<CR>
map <LEADER>g :FufTag<CR>
map <LEADER>q :FufQuickfix<CR>
map <LEADER>b :FufBuffer<CR>

" Ack
nnoremap <LEADER>a :Ack <C-r><C-w><CR> 

" NERDTree
map <LEADER>n :NERDTree<CR>

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
nmap <D-j> <M-j>
nmap <D-k> <M-k>
vmap <D-j> <M-j>
vmap <D-k> <M-k>

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

" This lets you use w!! to do that after you opened the file already
"cmap w!! w !sudo tee % >/dev/null

"default colorscheme
colorscheme vividchalk

" standard status + git status
set statusline=%<%f\ %{fugitive#statusline()}\ %h%m%r\ PWD:\ %{CurDir()}%=%-14.(%l,%c%V%)\ %P

function! CurDir()
    let curdir = substitute(getcwd(), '/Users/Patrick/', "~/", "g")
    return curdir
endfunction

"different colorscheme for file types
autocmd FileType java colorscheme slate

"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
"improve autocomplete menu color
"highlight Pmenu ctermbg=238 gui=bold
