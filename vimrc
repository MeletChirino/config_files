set relativenumber
syntax on
set ruler
set encoding=utf-8
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kaicataldo/material.vim'
Plugin 'cormacrelf/vim-colors-github'
Plugin 'vim-python/python-syntax'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'jreybert/vimagit'
" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plugin 'xuhdev/vim-latex-live-preview'
" VDHL plugin
Plugin 'suoto/vim-hdl'


call vundle#end()

syntax on

" Esquema de color para vim
" =============================================================
" Configuración para color de esquema material.
colorscheme material
""let g:github_colors_soft = 1

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511

" ==============================================================

filetype plugin indent on

" Configuración para usar PEP8

au BufNewFile,BufRead *.py
    \ set tabstop=4 | " Ancho en espacios de un tab.
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 | " El ancho por línea de código.
    \ set expandtab | " convierte tab en espacios.
    \ set autoindent | " Indentar automáticamente.
    \ set fileformat=unix

au BufNewFile,BufRead *.c
    \ set tabstop=4 | " Ancho en espacios de un tab.
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 | " El ancho por línea de código.
    \ set expandtab | " convierte tab en espacios.
    \ set autoindent | " Indentar automáticamente.
    \ set fileformat=unix

" Mostrar número de línea
set number

" Muestra líena debajo del cursor.
set cursorline

" Muestra la pareja de [] {} y ()
set showmatch

" Activa python highlight
let python_highlight_all = 1

" Tamaño por defecto del terminal

" encoding
set encoding=utf-8

" Configurando <leader> shortcut
let mapleader = ","

" Keymaps
" =====================================
" Abrir NerdTree
map <C-n> :NERDTreeToggle<CR>

" Abrir terminal
map <F2> :belowright terminal<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Saltar al final de la línea
inoremap <C-e> <C-o>$

" Saltar entre buffers
"map <C-Char-0x3E> :bnext<CR>
"map <C-Char-0x3C> :bprevious<CR>
map <C-l> :bnext<CR>
map <C-h> :bprevious<CR>


" =====================================
" " Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline_theme='hybridline'
