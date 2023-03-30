set nocompatible

call plug#begin()

Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'vim-airline/vim-airline'
Plug 'ghifarit53/tokyonight-vim'

call plug#end()

set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set autoread
set hidden
set termguicolors

set laststatus=2
set ruler
set wildmenu

-- relative number
set nu
set relativenumber
augroup toggle_relative_number

autocmd InsertEnter * :setlocal norelativenumber

autocmd InsertLeave * :setlocal relativenumber

autocmd BufNewFile *.java Or ~/.vim/templates/java.tpl

colorscheme catppuccin_mocha
--let g:airline_theme = 'catppuccin_mocha'

--let g:airline_theme = "tokyonight"
--let g:airline_theme = 'catppuccin_mocha'
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

--tabs
set autoindent
filetype plugin indent on
set softtabstop=2
set tabstop=4
set shiftwidth=2
set expandtab
set nowrap

--searching
set incsearch
set hlsearch
set ignorecase
set smartcase

set encoding=utf-8
set linebreak
set scrolloff=3
set sidescrolloff=5
syntax enable
syntax on

set confirm

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)

set directory=$HOME/.vim/swap//

set undofile
set undodir=~/.vim/undodir

let g:netrw_browse_split = 4

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
set foldcolumn=0


-- auto load folds

--augroup auto_save_folds
--autocmd!
--autocmd BufWinLeave * mkview
--autocmd BufWinEnter * silent loadview


--keymap
let mapleader = "\<Space>"

nnoremap <Leader>w :w<CR>

kap <C-K>:bprev<CR>
map <C-J>:bnext<CR>

nnoremap <C-H> <C-W><C-H>

nnoremap <C-J> <C-W><C-J>

nnoremap <C-K> <C-W><C-K>

nnoremap <C-L> <C-W><C-L>

