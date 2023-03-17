" default configs
syntax enable
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set tabstop=2
set sw=2 expandtab
set relativenumber
set wrap!
set autoindent

" Php file configs
autocmd FileType php setlocal tabstop=4 sw=4 expandtab

" JavaScript file configs
autocmd FileType javascript setlocal tabstop=2 sw=2 expandtab

" Plugins
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'http://github.com/tpope/vim-surround'
Plug 'neoclide/coc.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'terryma/vim-multiple-cursors'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'folke/tokyonight.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'ayu-theme/ayu-vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" Mappings and commands
let mapleader = " "
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-t> :botright new <Bar> :resize 20 <Bar> :terminal<CR>
nnoremap <C-f> :Telescope find_files<CR>
nnoremap <C-p> :Telescope buffers<CR>
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
nnoremap <leader>ff <cmd>Files<CR>
nnoremap <leader>fs <cmd>Ag<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>
nnoremap <leader>bd <cmd>bd<CR>
nnoremap <leader>w <cmd>:w<CR>
nnoremap <leader>q <cmd>:q<CR>

" Theme configuration
set termguicolors

" Ayu theme
" let ayucolor="mirage"
" :colorscheme ayu

" Material theme
" let g:material_theme_style='palenight'
" let g:airline_theme='material'
" :colorscheme material

" GruvBox theme
set background=dark
:colorscheme gruvbox

" NerdTree
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"
let NERDTreeShowHidden=1

" air-line
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Coc
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" TreeSitter Configuration
lua <<EOF
require('nvim-treesitter.configs').setup {
  
  ensure_installed = {
    "php",
    "javascript",
    "html",
    "css"
  },

  indent = {
    enable = true,
    disable = {},
  },

  highlight = {
    enable = true,
	disable = { "javascript" },
  }
}
EOF
