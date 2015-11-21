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
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise

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
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop

" change the mapleader from \ to ,
let mapleader=","

" avoid loading matchparen plugin
let loaded_matchparen = 1

" 2-space indent for zencoding
let g:user_zen_settings = {
\  'indentation' : '  '
\}

" Make CR in {|} to open a new line
let delimitMate_expand_cr = 1

" To point Nvim to Python interpreter
let g:python_host_prog = '/usr/bin/python'
