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

" Color schemes
Bundle 'crusoexia/vim-dracula'
Bundle 'chriskempson/base16-vim'

" Snippets
Bundle 'honza/vim-snippets'
Bundle 'epilande/vim-es2015-snippets'
Bundle 'epilande/vim-react-snippets'
Bundle 'SirVer/ultisnips'

" Useful
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'junegunn/fzf.vim'
Bundle 'vim-scripts/bufexplorer.zip'

" Editing
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Raimondi/delimitMate'
Bundle 'vim-syntastic/syntastic'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-scripts/ZoomWin'
Bundle 'vim-scripts/camelcasemotion'
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/mru.vim'

" Web development
Bundle 'pangloss/vim-javascript'
Bundle 'mxw/vim-jsx'
Bundle 'leshill/vim-json'
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-ragtag'
Bundle 'rstacruz/sparkup'

" Go development
Bundle 'fatih/vim-go'

" C/C++ development
Bundle 'Valloric/YouCompleteMe'
Bundle 'rdnetto/YCM-Generator'

filetype plugin indent on " Enable filetype-specific plugin and indenting

colorscheme dracula
