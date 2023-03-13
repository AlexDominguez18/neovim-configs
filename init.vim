" default configs
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set tabstop=4
set sw=4
set relativenumber
set wrap!

" Php file configs
autocmd FileType php setlocal tabstop=4 sw=4 expandtab

" JavaScript file configs
autocmd FileType javascript setlocal tabstop=2 sw=2 expandtab

" Plugins
call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'http://github.com/tpope/vim-surround'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/BurntSushi/ripgrep'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'lukas-reineke/indent-blankline.nvim'

call plug#end()

" Commands
let mapleader = " "
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-t> :botright new <Bar> :resize 20 <Bar> :terminal<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-f> :Telescope find_files<CR>
nnoremap <C-p> :Telescope buffers<CR>
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==

" Theme configuration

" Ayu theme
"set termguicolors
"let ayucolor="mirage"
":colorscheme ayu

" Material theme
set termguicolors
let g:material_theme_style='palenight'
let g:airline_theme='material'
:colorscheme material


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

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
  }
}
EOF
