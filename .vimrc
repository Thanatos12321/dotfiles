execute pathogen#infect()
set number relativenumber



set expandtab
set breakindent
set tabstop=4
set shiftwidth=4
set ai

highlight lineNr ctermfg=red

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
colorscheme zellner

set nocompatible
syntax on
filetype plugin indent on
set spelllang=en_au

set foldmethod=indent
" These stop auto commenting
set formatoptions-=c
set formatoptions-=r
set formatoptions-=o

" search settings
set ignorecase
set smartcase

" fixes ai not letting paste work properly
set pastetoggle=<F2>

" all
inoremap jj <Esc>
" allows to write as sudo if vim not launched as sudo
cmap w!! w !sudo tee % 
" Reloads rc
cmap rvim source ~/.vimrc 
inoremap ;pp <++>
inoremap <Space><Space> <Esc>/<++><Enter>"_ca<
nnoremap <F9> :set spell!<Enter>
" inoremap <C-s> <Esc>:w<Enter>a

" set filetype
cmap ftpython set ft=python
cmap ftc set ft=c
cmap fttex set ft=tex
cmap ftgo set ft=go


" LaTex
autocmd FileType tex map <F5> :!pdflatex<Space>-shell-escape<Space>%<Enter> 
autocmd FileType tex inoremap ;itemize \begin{itemize}<Enter>\item<Space><++><Enter>\end{itemize}
autocmd FileType tex set tabstop=2 shiftwidth=2

" Python
autocmd FileType python inoremap ;def <Esc>ccdef<Space><++>(<++>):<Enter><++><CR>pass<Esc>kkI
autocmd FileType python map <F5> :w<CR>:!clear;python3<Space>%<CR>
autocmd FileType python inoremap ;imain <Esc>ccif<Space>__name__=="__main__":<Enter>
" Runs current line, deletes it though
autocmd FileType python vnoremap <F5> :w !python3<CR>
" Replaces selection with output 
autocmd FileType python vnoremap <F6> :!python3<CR>

" Go
autocmd FileType go set tabstop=2 shiftwidth=2
autocmd FileType go nnoremap <F5> :!go run %<CR>
" autocmd FileType go

" C
autocmd FileType c inoremap #b /********************************
autocmd FileType c inoremap #e ********************************/
autocmd FileType c nnoremap <F5> :!gcc<Space>%<Space>-o<Space>%:r<Enter>
autocmd FileType c nnoremap <F6> :!gcc<Space>%<Space>-LZDK<Space>-IZDK<Space>-lncurses<Space>-lzdk<Space>-lm<Space>-o<Space>%:r<Enter>
autocmd FileType c inoremap ;inc #include
autocmd FileType c set tabstop=2 shiftwidth=2




" Plugin settings
let g:lightline = {
    \ 'colorscheme': 'jellybeans',
    \}
set noshowmode

let g:vimtex_view_method = 'mupdf'
" let v:servername = 'tester'
" Disable overfull\underfull hbox warnings
let g:vimtex_quickfix_latexlog = {
    \ 'overfull' : 0,
    \ 'underfull' : 0
    \}
let g:vimtex_quickfix_open_on_warning = 0
