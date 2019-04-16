" install vim-plug if needed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

syntax on
syntax enable
filetype plugin on
set number
"speed boost
set hidden
set history=100
set hlsearch
set incsearch
set showmatch
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
let g:airline_powerline_fonts = 1

"indentation rules
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
"evil mode




nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

" ===============
" Key mappings
" ===============

let mapleader=","
map <leader>s :source ~/.vimrc<CR>
map ; :

" ===============
" Plugins
" ===============
call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'junegunn/goyo.vim'
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdtree'
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map <C-n> :NERDTreeToggle<CR>
Plug 'raimondi/delimitmate'
Plug 'ajh17/vimcompletesme'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'cakebaker/scss-syntax.vim'
Plug 'othree/csscomplete.vim'
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci
Plug 'kien/ctrlp.vim'
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'
Plug 'kabbamine/gulp-vim'
Plug 'junegunn/limelight.vim'
Plug 'spf13/piv'
Plug 'lumiliet/vim-twig'
call plug#end()
colorscheme gruvbox
