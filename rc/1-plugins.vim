" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Color schemes
Plug 'crusoexia/vim-dracula'
Plug 'chriskempson/base16-vim'

" Documentation
Plug 'rhysd/devdocs.vim'

" Snippets
Plug 'honza/vim-snippets'
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'

" Useful
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf.vim'

" Editing
Plug 'Lokaltog/vim-easymotion'
Plug 'Raimondi/delimitMate'
Plug 'vim-syntastic/syntastic'
Plug 'michaeljsmith/vim-indent-object'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/camelcasemotion'
Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/mru.vim'
Plug 'wincent/terminus'

"Linux kernel
Plug 'vivien/vim-linux-coding-style'

" Web development
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leshill/vim-json'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-ragtag'
Plug 'rstacruz/sparkup'

" Go development
Plug 'fatih/vim-go'

" C/C++ development
Plug 'arakashic/chromatica.nvim'
Plug 'octol/vim-cpp-enhanced-highlight'

"" Meson build system
Plug 'igankevich/mesonic'

" Rust development
Plug 'rust-lang/rust.vim'

" Dart development
Plug 'dart-lang/dart-vim-plugin'

" Kotlin development
Plug 'udalov/kotlin-vim'

" Initialize plugin system
call plug#end()

colorscheme dracula
