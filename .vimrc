" size of a hard tabstop
set tabstop=2

" fine tunes the white space
set softtabstop=2

" always uses spaces instead of tab characters
set expandtab

" size of an "indent"
set shiftwidth=2

set term=xterm-256color

" do not try to simulate vi
set nocompatible

syntax enable
filetype plugin on
syntax on
colorscheme jr-color

" enable mouse support
set mouse=a

" highlight all search matches
set hlsearch

"" folding
"set foldmethod=syntax
""set foldmethod=indent
""set foldlevel=1
""set foldclose=all
""
"set foldnestmax=1
""autocmd FileType c setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\s*//'


" vim-plug section
call plug#begin('~/.vim/plugged')

" lightline
" Plug 'itchyny/lightline.vim'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" c++ additional syntax highlighting
Plug 'octol/vim-cpp-enhanced-highlight'

" Initialize plugin system
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '|'
let g:airline#extensions#tabline#left_alt_sep = '>'

let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#fnamemod = ':.'
"let g:airline#extensions#tabline#fnamecollapse = 1

set laststatus=2

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

