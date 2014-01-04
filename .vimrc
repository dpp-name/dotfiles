" vim config

syntax on
set nu
set nowrap
set restorescreen
set encoding=utf8
set fileencoding=utf8
set nocompatible    " use vim defaults
set ch=1        	" Make command line two lines high
set ls=2            " allways show status line
set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set incsearch       " do incremental searching
set ignorecase      " case insensitive
set mouse=a  		" enable mouse
set nomousehide     " DON'T Hide the mouse when typing text
set ruler           " show the cursor position all the time
set visualbell t_vb=    " turn off error beep/flash
set novisualbell    " turn off visual bell
set nobackup        " do not keep a backup file
set whichwrap=b,s,h,l,<,>,[,],~   " move freely between files
set backspace=2 	" allow to backspace/delete through lines and bs already existing text
set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P
set scrolloff=3     " keep 3 lines when scrolling
set scrolljump=8 	" scroll by X lines at a time
set wildmenu
set hidden          " do NOT unload buffer when switching to another one
set dir=/tmp//,.    " set swap file directory
set wildignore=".git,.svn,*.pyc"
set tabstop=4
set shiftwidth=4
set noexpandtab
set smarttab
set cindent         " cindent
set smartindent     " smart indent
set autoindent      " always set autoindenting on
" map < & > to indent blocks 
vnoremap < <gv
vnoremap > >gv

autocmd Filetype html setlocal ts=4 sw=4 noexpandtab
autocmd Filetype php setlocal ts=4 sw=4 expandtab foldmethod=syntax
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 noexpandtab foldmethod=syntax

au BufnewFile,BufRead *.phtml set syntax=php
au BufnewFile,BufRead *.php set syntax=php

"let g:miniBufExplMapCTabSwitchBufs = 1

set path=.,/home/dpp/badoo,/home/dpp/badoo/js,/home/dpp/badoo/_packages,/home/dpp/badoo/_packages/core,/home/dpp/badoo/_pages,/home/dpp/badoo/_views,/home/dpp/badoo/_templates/dev/-/

nnoremap ; :
let mapleader = ","
nmap <leader>n <esc>:cn<cr>n
nmap <leader><leader> :b#<cr>
nmap <leader>b <esc>:!tb %<cr>
nnoremap / /\v
cnoremap %s/ %s/\v

map <F2> :w<cr>
vnoremap <F2> <esc>:w<cr>i
inoremap <F2> <esc>:w<cr>i

map <S-Tab> :bp<cr>
map <Tab> :bn<cr>
"map <F5> :w<cr>:!php -f %<cr>
"map <S-F5> :w<cr>:!php -l %<cr>
"map <F5> :w<cr>:cexpr system('php -f '.expand("%")) \| copen<cr>
"map <S-F5> :w<cr>:cexpr system('php -l '.expand("%")) \| copen<cr>
map <S-F5> :w<cr>:!php -f %<cr>
map <F5> :w<cr>:call CheckSyntax()<cr>

nmap <silent> <F6> :NERDTreeFind<cr>
nmap <silent> <F7> :NERDTreeToggle<cr>

" set autochdir
" autocmd BufEnter * lcd %:p:h
" map ,cd :cd %:p:h<CR>

" ,/ C/C++/C#/Java // comments
" map ,/ :s/^/\/\//<CR>

"set foldmarker={,}
"set foldmarker=//{,//}
"set foldmethod=marker
"foldmethod=syntax
" au BufWinLeave * mkview
" au BufWinEnter * silent loadview
"let g:php_folding=2


function InsertTabWrapper()
      let col = col('.') - 1
      if !col || getline('.')[col - 1] !~ '\k'
          return "\<tab>"
      else
          return "\<c-p>"
      endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>

" Only do this part when compiled with support for autocommands.
if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

endif " has("autocmd")

" < COLORS >"

if ! has("gui_running") 
    set t_Co=256 
endif 
hi clear
if exists("syntax_on")
    syntax reset
endif

" GUI
highlight Text       guifg=black     guibg=black
hi 		  Normal     guifg=lightgrey guibg=black
highlight Search     guifg=Black     guibg=Red
highlight Visual     guifg=Grey45
highlight Cursor     guifg=Black     guibg=Green
highlight Special    guifg=Orange
highlight Comment    guifg=darkgrey  guibg=black
highlight StatusLine guifg=blue      guibg=white
highlight Statement  guifg=Yellow    gui=NONE
highlight Type                       gui=NONE
highlight Constant   gui=NONE  	    guibg=black

" Console
"highlight Normal     ctermfg=LightGrey  ctermbg=Black
highlight Normal     ctermfg=LightGrey
highlight Search     ctermfg=Black 		ctermbg=Red  	cterm=NONE
highlight Visual     cterm=reverse
highlight Cursor     ctermfg=Black 		ctermbg=Green
highlight Special    ctermfg=Brown
highlight Comment    ctermfg=darkgrey
highlight StatusLine ctermfg=blue   	ctermbg=white
highlight Statement  ctermfg=Yellow     cterm=NONE
highlight Type                      	cterm=NONE

hi Folded           guifg=#A0A0A0 guibg=#303070         ctermfg=darkgrey ctermbg=black
hi FoldColumn       guifg=#A0A0A0 guibg=#303070         ctermfg=darkgrey ctermbg=black
hi LineNr           guifg=#90f020           ctermfg=green cterm=none


" feel free to choose :set background=light for a different style 
"set background=dark 
"colors peaksea

" </ COLORS >

ab super $super(this,arguments);
ab class $class<CR>({<CR>constructor:function()<CR>{<CR>},<CR>});

