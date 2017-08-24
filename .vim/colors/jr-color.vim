" Vim color file
"
" Author: John Ravi <jostache@gmail.com>
" Note: Dark colorscheme for terminals supporting 256 colors
"

hi clear

set background=dark
let g:colors_name="jr-color"

" Support for 256-color terminal
"
if &t_Co > 255
  " hl-Normal        Normal text - always put Normal first - affects other colors
  hi Normal          ctermfg=252 ctermbg=none

  " constants 
  hi Boolean         ctermfg=135
  hi Constant        ctermfg=135               
  hi Character       ctermfg=144
  hi Float           ctermfg=135
  hi Number          ctermfg=135
  hi String          ctermfg=144

  " if, then, else, endif, switch, etc.
  hi Conditional     ctermfg=161               

  " for, do, while, etc.
  hi Repeat          ctermfg=161

  hi Cursor          ctermfg=16  ctermbg=253

  " debugging statements
  hi Debug           ctermfg=225               cterm=bold

  " Include preprocessor #include
  " nothing for include - inherits PreProc
  " preprocessor #define
  hi Define          ctermfg=81
 
  " character that needs attention
  hi Delimiter       ctermfg=241

  " hl-DiffText      diff mode
  hi DiffAdd                     ctermbg=24
  hi DiffChange      ctermfg=181 ctermbg=239
  hi DiffDelete      ctermfg=162 ctermbg=53
  hi DiffText                    ctermbg=102   cterm=bold

  " hl-Directory     directory names (and other special names in listings)
  hi Directory       ctermfg=118               cterm=bold

  " any erroneous construct
  hi Error           ctermfg=219 ctermbg=89

  " hl-ErrorMsg      error messages on the command line
  hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold

  " try, catch, throw
  hi Exception       ctermfg=118

  " hl-FoldColumn    'foldcolumn'
  hi FoldColumn      ctermfg=67  ctermbg=16

  " hl-Folded          line used for closed folds
  hi Folded          ctermfg=67  ctermbg=16

  "Function (also: methods for classes)
  hi Function        ctermfg=118

  " Identifier - any variable name
  hi Identifier      ctermfg=208

  " left blank, hidden  (hl-Ignore)
  hi Ignore          ctermfg=244 ctermbg=232

  " hl-IncSearch    'incsearch' highlighting; also used for the text replaced with ":s///c"
  hi IncSearch       ctermfg=193 ctermbg=16

  " any other keyword
  hi Keyword         ctermfg=161

  " case, default, etc.
  hi Label           ctermfg=229

  " Marcos 
  hi Macro           ctermfg=81

  " hl-SpecialKey    Meta and special keys listed with ":map", also for text used to
  "                  show unprintable characters in the text, 'listchars'. Generally
  "                  text that is displayed differently from what it really is.
  hi SpecialKey      ctermfg=81

  "hl-MatchParen     The character under the cursor or just before it, if it is a 
  "                  paired bracket, and its match. |pi_paren.txt|
  hi MatchParen      ctermfg=208 ctermbg=none cterm=bold 

  " hl-ModeMsg        'showmode' message (e.g., "-- INSERT --")
  hi ModeMsg         ctermfg=229

  " hl-MoreMsg       |more-prompt|
  hi MoreMsg         ctermfg=229

  " sizeof or + or * or etc.
  hi Operator        ctermfg=161

  " complete menu
  " hl-Pmenu           Popup menu: normal item.
  hi Pmenu           ctermfg=81  ctermbg=16
  " hl-PmenuSel        Popup menu: selected item.
  hi PmenuSel                    ctermbg=244
  " hl-PmenuSbar       Popup menu: scrollbar.
  hi PmenuSbar                   ctermbg=232
  " hl-PmenuThumb      Popup menu: Thumb of the scrollbar.
  hi PmenuThumb      ctermfg=81

  " hl-SpellBad        Word that is not recognized by the spellchecker. |spell| This
  "                    will be combined with the highlighting used otherwise.
  " hi SpellCap        ctermfg=none ctermbg=none  cterm=none
  " hl-SpellCap        Word that should start with a capital. |spell| This will be
  "                    combined with the highlighting used otherwise.
  " hi SpellCap        ctermfg=none ctermbg=none  cterm=none
  " hl-SpellLocal      Word that is recognized by the spellchecker as one that is used
  "                    in another region. |spell| This will be combined with the
  "                    highlighting used otherwise.
  " hi SpellLocal      ctermfg=none ctermbg=none cterm=none
  " hl-SpellRare       Word that is recognized by the spellchecker as one that is hardly
  "                    ever used. |spell| This will be combined with the highlighting
  "                    used otherwise.
  " hi SpellRare       ctermfg=none ctermbg=none cterm=none
  "
  " hl-Cursor          the character under the cursor
  " hi Cursor          ctermfg=none ctermbg=none cterm=none
  " hl-Conceal         placeholder characters substituted for concealed text (see 'conceallevel')
  " hi Conceal         ctermfg=none ctermbg=none  cterm=none

  " preprocessor #if, #else, #endif, etc.
  hi PreCondit       ctermfg=118

  " PreProc - generic Preprocessor
  hi PreProc         ctermfg=118

  " hl-Question        |hit-enter| prompt and yes/no questions
  hi Question        ctermfg=81

  " hl-Search        Last search pattern highlighting (see 'hlsearch'). Also used for 
  "                  highlighting the current line in the quickfix window and similar 
  "                  items that need to stand out.
  hi Search          ctermfg=253 ctermbg=66

  " hl-SignColumn    column where |signs| are displayed
  hi SignColumn      ctermfg=118 ctermbg=235

  " special character in a constant
  hi SpecialChar     ctermfg=161               cterm=bold

  " special things inside a comment
  hi SpecialComment  ctermfg=245               cterm=bold

  " Special - any special symbol
  hi Special         ctermfg=81  ctermbg=232
  
  hi SpecialKey      ctermfg=245

  " Statement
  hi Statement       ctermfg=161               

  " hl-StatusLine      StatusLine  status line of current window
  hi StatusLine      ctermfg=238 ctermbg=253

  " hl-StatusLineNC    StatusLineNC  status lines of not-current windows.
  " Note: if this is equal to "StatusLine" 
  " Vim will use "^^^" in the status line of the current window.
  hi StatusLineNC    ctermfg=244 ctermbg=232

  " static, register, volatile, etc.
  hi StorageClass    ctermfg=208

  " struct, union, enum, etc.
  hi Structure       ctermfg=81

  " you can use CTRL-] on this
  hi Tag             ctermfg=161

  "hl-TabLine        tab pages line, not active tab page label
  hi TabLine         ctermfg=246 ctermbg=237

  "hl-TabLineFill    tab pages line, where there are no labels
  hi TabLineFill                 ctermbg=234

  "hl-TabLineSel     tab pages line, active tab page label
  hi TabLineSel      ctermfg=252 ctermbg=233

  " hl-Title           titles for output from ":set all", ":autocmd" etc.
  hi Title           ctermfg=166

  "anything that needs extra attention; mostly the keywords TODO FIXME and XXX
  hi Todo            ctermfg=231 ctermbg=232   cterm=bold

  " a typedef
  hi Typedef         ctermfg=81

  " Type - int, long, char, etc.
  hi Type            ctermfg=81

  " text that stands out, HTML links
  hi Underlined      ctermfg=244               cterm=underline

  " hl-VertSplit     the column separating vertically split windows
  hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold

  hi VisualNOS                   ctermbg=238

  " hl-Visual        Visual mode selection
  hi Visual                      ctermbg=235

  " hl-WarningMsg    Warning messages
  hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold

  " hl-WildMenu        current match in 'wildmenu' completion
  hi WildMenu        ctermfg=81  ctermbg=16

  " Comment
  hi Comment         ctermfg=59

  " hl-CursorLineNr  Like LineNr when 'cursorline' is set for the cursor line.
  hi CursorLineNr    ctermfg=248 ctermbg=235  cterm=none

  " hl-CursorLine      the screen line that the cursor is in when 'cursorline' is set
  hi CursorLine                  ctermbg=234   cterm=none

  "hl-CursorColumn    the screen column that the cursor is in when 'cursorcolumn' is set
  hi CursorColumn                ctermbg=235

  "hl-LineNr          Line number for ":number" and ":#" commands, and when 'number' 
  "                   or 'relativenumber' option is set.
  hi LineNr          ctermfg=250 ctermbg=234

  "hl-NonText         '~' and '@' at the end of the window, characters from 
  "                   'showbreak' and other characters that do not really exist 
  "                   in the text (e.g., ">" displayed when a double-wide
  "                   character doesn't fit at the end of the line).
  hi NonText         ctermfg=250 ctermbg=233

  " enable italics
  " set t_ZH=[3m
  " set t_ZR=[23m
  let &t_ZH="\e[3m"
  let &t_ZR="\e[23m"
  " highlight Comment cterm=italic

  "
  "  Custom Plugins Highlight
  " 
  "
  "
  " NerdTree
  "
  hi NerdTreeCWD      ctermfg=39 
  hi NerdTreeFile     ctermfg=252 
  hi NerdTreeDir      ctermfg=252
  hi NerdTreeDirSlash ctermfg=252
  hi NerdTreeHelp     ctermfg=240

  " Vimwiki
  hi VimwikiHeader1   ctermfg=226
  hi VimwikiHeader2   ctermfg=227
  hi VimwikiHeader3   ctermfg=228
  hi VimwikiHeader4   ctermfg=229
  hi VimwikiHeader5   ctermfg=230
  hi VimwikiHeader6   ctermfg=231

  hi def VimwikiBold  term=bold cterm=bold gui=bold
    " hi def VimwikiItalic                         cterm=italic
  hi def VimwikiItalic term=italic cterm=italic gui=italic

  " hi def VimwikiBoldItalic term=bold cterm=bold gui=bold,italic
  " hi def link VimwikiItalicBold VimwikiBoldItalic

  hi def link VimwikiPre SpecialComment
  hi def link VimwikiLink Underlined
  hi def link VimwikiList Function
  hi def link VimwikiCheckBox VimwikiList
  hi def link VimwikiCheckBoxDone Comment
  hi def link VimwikiTable PreProc
  hi def link VimwikiEmoticons Character
  hi def link VimwikiDelText Constant
  hi def link VimwikiSuperScript Number
  hi def link VimwikiSubScript Number
  hi def link VimwikiTodo Todo
  hi def link VimwikiComment Comment

end
