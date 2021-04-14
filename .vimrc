set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree'
Plugin 'valloric/youcompleteme'
Plugin 'nanotech/jellybeans.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'spolu/dwm.vim'
"Plugin 'markonm/traces.vim'
"Plugin 'osyo-manga/vim-over'
Plugin 'talek/obvious-resize'
Plugin 'svermeulen/vim-easyclip'
Plugin 'scrooloose/nerdcommenter'
Plugin 'lervag/vimtex'
Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-speeddating'
"Plugin 'easysid/mod8.vim'
Plugin 'mswift42/vim-themes'
Plugin 'yggdroot/indentline'
Plugin 'CursorLineCurrentWindow'
Plugin 'markonm/traces.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
"
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

set number
set ts=3 sts=3 sw=3

"syntax highlighting
syntax enable

set backspace=2 "make backspace work like most other apps
set backspace=indent,eol,start

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0
colorscheme jellybeans
noremap <silent> <C-Up> :<C-U>ObviousResizeUp<CR>
noremap <silent> <C-Down> :<C-U>ObviousResizeDown<CR>
noremap <silent> <C-Left> :<C-U>ObviousResizeLeft<CR>
noremap <silent> <C-Right> :<C-U>ObviousResizeRight<CR>

"dwm plugin shortcuts
"C-N Creates a new window and place it in the master pane [M] & stacks all previous windows in the stacked pane [S]
"C-C Close the current window if no unsaved changes
"C-J Jumps to next window (clockwise)
"C-K Jumps to previous window (anti-clockwise)
"C-Space Focus the current window, that is, place it in the master pane [M] & stacks all other windows in the stacked pane [S]


"80 column ruler
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
"augroup vimrc_autocmds
"	autocmd BufEnter * highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"	autocmd BufEnter * match OverLength /\%81v.*/
"augroup END

"set ruler

set mouse=a
set ttymouse=xterm2

set clipboard=unnamed

filetype plugin on

"Changing the leader key
""let mapleader =","

nnoremap S :%s/\v
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase

let g:vimtex_view_general_viewer = 'evince'

"colorscheme soft-charcoal
set cursorline
