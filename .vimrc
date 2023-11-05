" PERSONAL, SHORT, VIM CONFIGURATION FILE

" Show a window title
set title
" Reload the file if detect a change by another program
"set autoread
" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start
" Keep 200 lines of history
set history=200	
" Switch biffer even if the current buffer is not saved
set hidden
" Disable swap file (gave me problems in the past)
set noswapfile
" Always show cursor position
set ruler	
" Enable omnicompletion
set omnifunc=syntaxcomplete#Complete
" Load an indent file for the detected file type.
set autoindent
filetype indent plugin on
" Turn syntax highlighting 
syntax on
" Add numbers to each line on the left-hand side.
set number relativenumber
" Highlight cursor line/column
set cursorline
"set cursorcolumn
" Show commands used in the bottom right corner
set showcmd

" Enable completion menu after pressing TAB in the command bar.
set wildmode=longest:full,full
set wildmenu
" Vertical wildemenu
set wildoptions=pum

" Enable search text highlight (:nohlsearch or :nohls to disable) 
set incsearch hlsearch
" Append filders to path (not needed right now)
"set path+=**
" By default search will won't be case sensitive
set ignorecase
" Enable case sensitivity only if there's an upper case in the search string
set smartcase
" Replace tab with spaces 
set expandtab
set tabstop=4
set shiftwidth=4

" Colorscheme
"colorscheme habamax 

" Enable mouse integration for all modes 
set mouse=a

" Set scroll to a value that makes my eyes able to follow text scrolling
" (commented the line as the value is refreshed in runtime, probably to
" achieve this I have to keybind)
"set scroll=5
" Set a minium number of visible line on top and on the bottom of the in-view
" area
set scrolloff=2

" Use local vimrc (look for a .exrc file in ./)
set exrc
set secure

" Status line
" Statusline always visible
set laststatus=2
" Color
"hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15
" Contents
set statusline=%f\ \                            " file name
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}, "file format
set statusline+=%y]     "filetype
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=\ %<%F%*            "full path

set statusline+=\ %=                        " align left
set statusline+=Line:%l/%L[%p%%]            " line X of Y [percent of file]
set statusline+=\ Col:%c                    " current column
set statusline+=\ Buf:%n                    " Buffer number
" #############################################################################################
" KEY MAPS
" Q by default maps to Ex mode, useless for me, I have to think about it
nnoremap Q gq
" List buffers
nnoremap <space> :ls<CR>:b<Space>
" Clear highlight
nnoremap <Esc> :noh<CR>
" Move between buffers and tabs in normal mode using Alt-key binds
nnoremap <M-j> :bn<CR>
nnoremap <M-k> :bp<CR>
nnoremap <M-h> :tabprevious<CR>
nnoremap <M-l> :tabnext<CR>
" Automatic brackets close
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
