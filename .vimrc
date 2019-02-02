set nocompatible
filetype off

set rtp+=/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-surround'

call vundle#end()
filetype plugin indent on

set clipboard=unnamed
set splitbelow
set splitright
set nu

set foldmethod=indent
set foldlevel=99

nnoremap <space> za

let python_highlight_all=1
syntax on

let NERDTreeIgnore=['\.pyc$', '\~$']

let g:SimpylFold_docstring_preview=1

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

au BufNewFile,BufRead *.py
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
	\ set textwidth=79
	\ set expandtab
	\ set autoindent
	\ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css, *.yml
	\ set tabstop=2
	\ set softtabstop=2
	\ set shiftwidth=2

set encoding=utf-8