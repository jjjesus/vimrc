"
" Plugin managment from vim-plug
" https://github.com/junegunn/vim-plug
"
call plug#begin('~/.vim/plugged')
Plug 'aklt/plantuml-syntax'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()
" To install plugins, :PlugInstall

" Auto change directory
set autochdir
autocmd BufEnter * silent! lcd %:p:h
" set background=light
set background=dark
" Nice colors
colorscheme PaperColor
" Syntax highlighting
syntax on
" Tabs and indents
set ts=4
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Word wrap and column guide
set textwidth=80
set colorcolumn=+1
" trim trailing spaces
autocmd FileType c,cpp,java,php,tex autocmd BufWritePre <buffer> %s/\s\+$//e
" statusline setup
set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
" spell checking for tex files
autocmd BufRead,BufNewFile *.tex setlocal spell
"
" GVIM
"
if has("gui_running")
    set guifont=FreeMono\ 14
    colorscheme desert
    set guioptions-=T
    set lines=36 columns=100
endif
" Buffer switching
"
nnoremap <C-j> :bprev<CR>
nnoremap <C-k> :bnext<CR>
" Get a list of buffers
" :buffers
" Switch to a buffer by number
" :buffer#
" Remove buffer
":bd

set expandtab
set ts=4

hi User1 ctermfg=Green ctermbg=DarkGray
hi User2 ctermfg=Red ctermbg=DarkGray
hi User3 ctermfg=LightBlue ctermbg=DarkGray
hi User4 ctermfg=Yellow ctermbg=DarkGray
hi User5 ctermfg=LightBlue ctermbg=DarkGray

set laststatus=2
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
"set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
"set statusline +=%2*0x%04B\ %*          "character under cursor

