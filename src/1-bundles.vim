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

Bundle 'dracula/vim'
Bundle 'chriskempson/base16-vim'
Bundle 'fatih/vim-go'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'bling/vim-airline'
" Automatic closing of quotes, parenthesis, brackets, etc.
Bundle 'Raimondi/delimitMate'
Bundle 'gmarik/vundle'
Bundle 'vim-syntastic/syntastic'
Bundle 'pangloss/vim-javascript'
Bundle 'mxw/vim-jsx'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'rking/ag.vim'
Bundle 'rstacruz/sparkup'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-scripts/ZoomWin'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'vim-scripts/camelcasemotion'
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/mru.vim'
Bundle 'majutsushi/tagbar'
Bundle 'honza/vim-snippets'
Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'

filetype plugin indent on " Enable filetype-specific plugin and indenting

colorscheme dracula
