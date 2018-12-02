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

" vim-plug section
call plug#begin('~/.vim/plugged')

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'
set laststatus=2

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

