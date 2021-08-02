syntax on

set exrc
set relativenumber
set relativenumber
set noerrorbells
set nohlsearch
set hidden
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set so=10
set noshowmode
set signcolumn=yes
set encoding=utf8
set colorcolumn=100
set signcolumn=yes
set updatetime=50
set cmdheight=2
set shortmess+=c
set guifont=FiraMono\ Nerd\ Font:h11

call plug#begin('~/.config/nvim')
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'scrooloose/nerdTree'
Plug 'dense-analysis/ale'
Plug 'mattn/emmet-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'scrooloose/nerdtree-project-plugin'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
call plug#end()

let mapleader = " "

" Set colorscheme
colorscheme purify

" Ale Configuration
let g:user_emmet_expandabbr_key = '<C-a>,'
let g:ale_sign_error = '❌'
let g:ale_fixers = ['prettier','eslint']
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1

" Deoplete Configuration
let g:deoplete#enable_at_startup = 1

" Emmet Configuration
let g:user_emmet_expandabbr_key = '<C-a>,'

" Remaps
" Deoplete autocomplete suggestions
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" Nerdtree
nnoremap <leader>t :NERDTreeToggle<CR>


