set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.

" PLUGINS
call plug#begin()
    Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'scrooloose/nerdcommenter' 
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'dylanaraps/wal.vim'
call plug#end()

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" move split panes to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>

" Press the space bar to type the : character in command mode.
nnoremap <space> :

" Pressing the letter o will open a new line below the current one.
" Exit insert mode after creating a new line above or below the current line    .
nnoremap o o<esc>
nnoremap O O<esc>

" reload init.vim
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>

" copies filepath to clipboard by pressing yf
:nnoremap <silent> yf :let @+=expand('%:p')<CR>
" copies pwd to clipboard: command yd
:nnoremap <silent> yd :let @+=expand('%:p:h')<CR>

" nerd tree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Set wal scheme
colorscheme wal
