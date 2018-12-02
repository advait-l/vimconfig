"Colors
"blue.vim      default.vim  desert.vim   evening.vim   koehler.vim  murphy.vim  peachpuff.vim  ron.vim    slate.vim  zellner.vim
"darkblue.vim  delek.vim    elflord.vim  industry.vim  morning.vim  pablo.vim   README.txt     shine.vim  torte.vim

colorscheme morning
syntax enable

"Spaces and Tabs
set expandtab  "tabs are spaces
set tabstop=4   "number of visual spaces per TAB
set softtabstop=4   "number of spaces in tab when editing
set shiftwidth=4
set smarttab
set autoindent
set smartindent

"UI Config

"Hybrid Line Numbering
set number relativenumber
:augroup numbertoggle
:   autocmd!
:   autocmd BufEnter, FocusGained, InsertLeave * set relativenumber "relative line number for non-insert mode
:   autocmd BufLeave, FocusLost, InsertEnter * set norelativenumber "absolute line number for insert mode
:augroup END

set showcmd      "show command in bottom bar
set cursorline      "highlight current line
set cursorcolumn    "for indentation
filetype indent on  "load filetype specific indent files
set wildmenu    "visual autocomplete for command menu
set showmatch   "highlight matching [{()}]

"Searching
set incsearch   "search as characters are entered
set hlsearch    "highlight matches

"Movement
"move to beginning/end of line
nnoremap B ^
nnoremap E $

"Exit insert mode
:imap ;; <Esc>

"Enter insert mode
:nmap ;;  i

"Autobracket
:inoremap ( ()<Esc>i
:inoremap { {}<Esc>i
:inoremap [ []<Esc>i
:inoremap " ""<Esc>i
:inoremap ' ''<Esc>i

set mouse=a

"File Explorer
let g:netrw_liststyle = 3   "tree list view in netrw
let g:netrw_banner = 0  "remove directory banner
let g:netrw_browse_split = 4    "opens files in new horizontal split, 2 - vertical, 3 - new tab, 4 - previous window

let g:netrw_winsize = 13    "25% of page width
let g:netrw_altv = 1
augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * :Vexplore
augroup END

"Move among tabs
map <C-Right> gt
map <C-left> gT

