set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" Vundle required 
Plugin 'VundleVim/Vundle.vim'

" Color scheme and switcher
"Plugin 'flazz/vim-colorschemes'
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'SergeySpirin/vim'

" airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" js improved highlighting
Plugin 'maxmellon/vim-jsx-pretty'

" autocomplete
if has('nvim')
        Plugin 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
endif

" pack in brackets or tags
Plugin 'tpope/vim-surround'

call vundle#end()

set mouse=a
set scrolloff=8
set encoding=utf-8
set fileformat=unix
set noswapfile
set number
set signcolumn=number
set termguicolors

filetype plugin indent on

" tabs 
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

" PHP

autocmd FileType javascript setlocal shiftwidth=8 softtabstop=8 expandtab smartindent autoindent

" coc.nvim
if &rtp =~ 'coc.nvim'
        "let b:coc_suggest_disable = 1
        inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
endif

" airline

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffers_label = ''
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_close_button = 0
let airline#extensions#tabline#show_splits = 0

let g:airline_powerline_fonts = 1
let g:airline_theme='espiares'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''

let g:airline_skip_empty_sections = 1

let g:airline_section_x = ""
let g:airline_section_z = "%3p%% %l:%c"

" colorscheme
colorscheme espiares

inoremap jk <esc>

nnoremap ,<space> :nohl

" tabs hotkeys 
nnoremap ex :Explore<CR>  
nnoremap <Tab>= :tabnew<CR>
nnoremap <Tab>- :tabclose<CR>
nnoremap <Tab>l :tabnext<CR>
nnoremap <Tab>h :tabprevious<CR>
