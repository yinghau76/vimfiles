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
Plugin 'crusoexia/vim-dracula'
Plugin 'chriskempson/base16-vim'

" Documentation
Plugin 'rhysd/devdocs.vim'

" Snippets
Plugin 'honza/vim-snippets'
Plugin 'epilande/vim-es2015-snippets'
Plugin 'epilande/vim-react-snippets'
Plugin 'SirVer/ultisnips'

" Useful
Plugin 'gmarik/vundle'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf.vim'

" Editing
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-syntastic/syntastic'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-scripts/camelcasemotion'
Plugin 'vim-scripts/matchit.zip'
Plugin 'vim-scripts/mru.vim'
Plugin 'wincent/terminus'

"Linux kernel
Plugin 'vivien/vim-linux-coding-style'

" Web development
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'leshill/vim-json'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-ragtag'
Plugin 'rstacruz/sparkup'

" Go development
Plugin 'fatih/vim-go'

" C/C++ development
Plugin 'Valloric/YouCompleteMe'
Plugin 'arakashic/chromatica.nvim'
Plugin 'octol/vim-cpp-enhanced-highlight'

"" Meson build system
Plugin 'igankevich/mesonic'

" Rust development
Plugin 'rust-lang/rust.vim'

" Dart development
Plugin 'dart-lang/dart-vim-plugin'

" Kotlin development
Plugin 'udalov/kotlin-vim'

colorscheme dracula
