" Stop vi compatibility
set nocompatible

" Enable line numbering
set number

" Show matching brackets
set showmatch

" Set proper tabs
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Set indentation behaviour
set autoindent
set cindent

" Change prompt title to current filename
set title

" Always show the ruler on bottom of screen
set ruler
set laststatus=2

" Set search options
set incsearch
set ignorecase
set smartcase

" Indicate we have a fast SSH connection
set ttyfast

" Use <tab> to match bracket pairs i.o. %
nnoremap <tab> %
vnoremap <tab> %

" Use <F2> to toggle NERDTree
map <F2> :NERDTreeToggle<CR>

" Strip trailing whitespace
autocmd BufWritePre *.php :%s/\s\+$//e

" Enable function folding
au FileType php let php_folding=1
au FileType php set foldlevel=1

" Show hidden files in NERDTree
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1

" Recognize filetypes
filetype on
filetype plugin on

" Enable autocompletion for PHP/HTML/CSS
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
