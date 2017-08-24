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
" set mouse=a


" vim-plug section
call plug#begin('~/.vim/plugged')

" additional syntax highlighting 
Plug 'vim-cpp/vim-cpp'

" Note-taking in Vim
Plug 'vimwiki/vimwiki'

" Calendar plugin
Plug 'mattn/calendar-vim'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Initialize plugin system
call plug#end()

" vimwiki stuff " 
" Change directory and use Markdown syntax
let g:vimwiki_list = [{'path': '~/vimwiki/',
                       \ 'syntax': 'markdown', 'ext': '.md'}]


" let g:vimwiki_list = [ 
"      \{'path': '~/Documents/VimWiki/personal.wiki'}, 
"      \{'path': '~/Documents/VimWiki/tech.wiki'} 
"      \]
"au BufRead,BufNewFile *.wiki set filetype=vimwiki 
":autocmd FileType vimwiki map d :VimwikiMakeDiaryNote
"function! ToggleCalendar() 
"  execute ":Calendar" 
"  if exists("g:calendar_open")
"    if g:calendar_open == 1 
"      execute "q" 
"      unlet g:calendar_open 
"    else
"      g:calendar_open = 1 
"    end 
"  else 
"    let g:calendar_open = 1 
"  end 
"endfunction
":autocmd FileType vimwiki map c :call ToggleCalendar()
"
