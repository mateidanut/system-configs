" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set nowrap
set nu
set clipboard=unnamed
" folding with spacebar
nnoremap <space> za
" folding docstring preview
"let g:SimpylFold_docstring_preview=1

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" you complete me
Plugin 'Valloric/YouCompleteMe'

" Python folding
Plugin 'tmhedberg/SimpylFold'

" Syntax check at save
Plugin 'vim-syntastic/syntastic'

" PEP8 check
Plugin 'nvie/vim-flake8'

" Filetree
Plugin 'scrooloose/nerdtree'

" css coloring
Plugin 'ap/vim-css-color'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['__pycache__$', '\~$'] "ignore files in NERDTree
highlight LineNr term=bold ctermfg=67

