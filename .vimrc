" vim:fdm=marker

" Editor basics {{{
" Behave like Vim instead of Vi
set nocompatible

" allow backspacing over everything in insert mode
set bs=2

" Show a status line
set laststatus=2

" Enable syntax highlighting
syn on
syntax on
syntax enable

" keep 50 lines of command line history
set history=50

" show the cursor position all the time
set ruler

" auto read when file is changed from outside
set autoread

" necessary to make ftdetect work on Linux
filetype off
" Enable filetype detection
filetype on
" Enable filetype-specific indenting
filetype indent on
" Enable filetype-specific plugins
filetype plugin on

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

" highlight all search matches
set hlsearch

"if has("gui_running")	" GUI color and font settings
"  set guifont=Osaka-Mono:h20
"  set background=dark
"  set t_Co=256          " 256 color mode
"  set cursorline        " highlight current line
"  colors moria
"  highlight CursorLine          guibg=#003853 ctermbg=24  gui=none cterm=none
"else
"" terminal color settings
"  colors jr-color
"endif
colorscheme jr-color

" yank to the system register (*) by default
set clipboard=unnamed

" Cursor shows matching ) and }
set showmatch

" Show current mode
set showmode

" start wild expansion in the command line using <TAB>
set wildchar=<TAB>

" wild char completion menu
set wildmenu

" ignore these files while expanding wild chars
set wildignore=*.o,*.class,*.pyc

" auto indentation
set autoindent

" incremental search
set incsearch

" no *~ backup files
set nobackup

" copy the previous indentation on autoindenting
set copyindent

" ignore case when searching
set ignorecase

" ignore case if search pattern is all lowercase,case-sensitive otherwise
set smartcase

" insert tabs on the start of a line according to context
set smarttab

" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" TAB setting{
   set expandtab        "replace <TAB> with spaces
   set softtabstop=3
   set shiftwidth=3

   au FileType Makefile set noexpandtab
"}

" show line numbers
set number

"" status line {
"set laststatus=2
"set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \
"set statusline+=\ \ \ [%{&ff}/%Y]
"set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\
"set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L
"
"function! CurDir()
"    let curdir = substitute(getcwd(), $HOME, "~", "")
"    return curdir
"endfunction
"
"function! HasPaste()
"    if &paste
"        return '[PASTE]'
"    else
"        return ''
"    endif
"endfunction
"
""}


" C/C++ specific settings
autocmd FileType c,cpp,cc  set cindent comments=sr:/*,mb:*,el:*/,:// cino=>s,e0,n0,f0,{0,}0,^-1s,:0,=s,g0,h1s,p2,t0,+2,(2,)20,*30

"Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"---------------------------------------------------------------------------
" USEFUL SHORTCUTS
"---------------------------------------------------------------------------
" set leader to ,
let mapleader=","
let g:mapleader=","

"replace the current word in all opened buffers
map <leader>r :call Replace()<CR>

" open the error console
map <leader>cc :botright cope<CR>
" move to next error
map <leader>] :cn<CR>
" move to the prev error
map <leader>[ :cp<CR>

" --- move around splits {
" move to and maximize the below split
map <C-J> <C-W>j<C-W>_
" move to and maximize the above split
map <C-K> <C-W>k<C-W>_
" move to and maximize the left split
nmap <c-h> <c-w>h<c-w><bar>
" move to and maximize the right split
nmap <c-l> <c-w>l<c-w><bar>
set wmw=0                     " set the min width of a window to 0 so we can maximize others
set wmh=0                     " set the min height of a window to 0 so we can maximize others
" }

" move around tabs. conflict with the original screen top/bottom
" comment them out if you want the original H/L
" go to prev tab
map <S-H> gT
" go to next tab
map <S-L> gt

" new tab
map <C-t><C-t> :tabnew<CR>
" close tab
map <C-t><C-w> :tabclose<CR>

" ,/ turn off search highlighting
nmap <leader>/ :nohl<CR>

" size of a hard tabstop
set tabstop=2

" fine tunes the white space
set softtabstop=2

" always uses spaces instead of tab characters
set expandtab

" size of an "indent"
set shiftwidth=2

"" folding
"set foldmethod=syntax
set foldmethod=indent
set foldnestmax=10
""set foldlevel=1
""set foldclose=all
""
"set foldnestmax=1
""autocmd FileType c setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\s*//'

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" }}}
" Mouse {{{
" Send more characters for redraws
set ttyfast

" Enable mouse use in all modes
set mouse=a

" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2
" }}}
" Disable arrow keys {{{
"noremap  <Up>     <NOP>
"inoremap <Down>   <NOP>
"inoremap <Left>   <NOP>
"inoremap <Right>  <NOP>
"noremap  <Up>     <NOP>
"noremap  <Down>   <NOP>
"noremap  <Left>   <NOP>
"noremap  <Right>  <NOP>
" }}}
" vim-plug {{{
call plug#begin('~/.vim/plugged')

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" c++ additional syntax highlighting
Plug 'octol/vim-cpp-enhanced-highlight'

" json
Plug 'elzr/vim-json'

" comment
Plug 'preservim/nerdcommenter'

" vim-slime
Plug 'jpalardy/vim-slime'

" Initialize plugin system
call plug#end()

" Nerd Commenter tweaks {{{
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '//','right': '' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

"nmap <C-/> <leader>c<Space>
"vmap <C-/> <leader>c<Space>
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

" }}}


" airline tweaks {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '|'
let g:airline#extensions#tabline#left_alt_sep = '>'

let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_nr = 0
"let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#fnamemod = ':.'
let g:airline#extensions#tabline#fnamecollapse = 0
" }}}

" vim-slime tweaks {{{
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_default_config = {"socket_name": "default", "target_pane":"{last}"}
let g:slime_python_ipython = 1

" }}}


" }}}

" Speedup start time by excluding X11
set clipboard=exclude:.*

" the magic is the ‘;’ at end. it will make vim tags file search go up from
" " current directory until it finds one.
set tags=tags;

set tabpagemax=30

set shortmess-=S
map ,* *<C-O>:%s///gn<CR>

" enable local dir vimrc
set exrc

"autocmd ColorScheme * highlight CursorLineNr cterm=bold term=bold gui=bold
"highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" indicates a fast terminal connection
set ttyfast

" screen will not redraw while executing macros..
set lazyredraw

set colorcolumn=110
highlight ColorColumn ctermbg=Black


" set synmaxcol=80

