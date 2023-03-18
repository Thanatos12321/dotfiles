
set number relativenumber nocompatible
syntax on
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'lervag/vimtex'
Plugin 'vim-syntastic/syntastic'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'junegunn/fzf'
" Plugin 'powerline/powerline'

call vundle#end()
filetype plugin indent on
filetype on

colorscheme desert

inoremap jj <Esc>

set foldmethod=indent
" These stop auto commenting
set formatoptions-=c
set formatoptions-=r
set formatoptions-=o

" search settings
set smartcase ignorecase


set pastetoggle=<F2>

set expandtab breakindent tabstop=4 shiftwidth=4 ai

" let g:tex_flavor='latex'

let g:vimtex_view_method = 'mupdf'
" let v:servername = 'tester'
" Disable overfull\underfull hbox warnings
" let g:vimtex_quickfix_latexlog = {
"     \ 'overfull' : 0,
"     \ 'underfull' : 0
"     \}
let g:vimtex_quickfix_open_on_warning = 0

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set rtp+=/home/tristan/.local/lib/python3.10/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
