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
Plugin 'SergeySpirin/vim-colors'

" airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" jsx hl 
Plugin 'maxmellon/vim-jsx-pretty'

" autocomplete
if has('nvim')
        Plugin 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
endif

" pack in brackets or tags
Plugin 'tpope/vim-surround'

" nerdtree
Plugin 'preservim/nerdtree'
Plugin 'ryanoasis/vim-devicons'

" autocomment
Plugin 'KarimElghamry/vim-auto-comment'

" Dart & Flutter
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'thosakwe/vim-flutter'

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

" js
autocmd FileType php setlocal shiftwidth=8 tabstop=8

" coc.nvim
if &rtp =~ 'coc.nvim'
        let b:coc_suggest_disable = 0
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

" autocomment 
let g:default_inline_comment = '//'
let g:default_block_comment = '/*'

vnoremap <C-Bslash> :AutoInlineComment<CR>
nnoremap <C-Bslash> :AutoInlineComment<CR>

vnoremap <silent><C-c-o> :AutoBlockComment<CR>
nnoremap <silent><C-c-b> :AutoBlockComment<CR>

" colorscheme
colorscheme espiares

inoremap jk <esc>

nnoremap ,<space> :nohl

" nerdtree hk
nnoremap <C-t> :NERDTreeToggle<CR>

" tabs hotkeys 
nnoremap ex :Explore<CR>  
nnoremap <Tab>= :tabnew<CR>
nnoremap <Tab>- :tabclose<CR>
nnoremap <Tab>l :tabnext<CR>
nnoremap <Tab>h :tabprevious<CR>
