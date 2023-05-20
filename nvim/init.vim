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
set cc=100                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.

nmap <C-b> :NERDTreeToggle<CR>

call plug#begin('~/.vim/plugged')
    "Plugin Section
    Plug 'dracula/vim'
    Plug 'chriskempson/base16-vim'
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'scrooloose/nerdtree'
    Plug 'neoclide/coc.nvim', { 'branch' : 'release'}
    Plug 'sbdchd/neoformat'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
    Plug 'bluz71/vim-nightfly-guicolors'
    Plug 'itchyny/lightline.vim'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'ap/vim-css-color'
call plug#end()


"color schemes
if (has("termguicolors"))
    set termguicolors
endif

syntax enable

colorscheme PaperColor
hi Normal guibg=NONE ctermbg=NONE

set laststatus=2

if !has('gui_running')
  set t_Co=256
endif
