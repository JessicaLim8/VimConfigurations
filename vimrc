" Basics
set nocompatible      " We're running Vim, not Vi!
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
syntax on             " Enable syntax highlighting

" Custom colour scheme
set background=dark
colorscheme material
if (has("termguicolors"))
  set termguicolors
endif

" Tabs and spaces configuration
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab "turns tabs into spaces
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType css setlocal ts=2 sts=2 sw=2

" NETRW settings
let g:netrw_liststyle = 3 " Show tree view
let g:netrw_banner = 0 " Remove useless banner
let g:netrw_winsize = 20 " Set width of explorer to 20% of page
let g:netrw_browse_split = 4
let g:netrw_altv = 1
set autochdir " Change directory to the current buffer when opening files
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Lexplore
"   autocmd VimEnter * :wincmd p
" augroup END

" Trim whitespace on save
function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre *.rb,*.c,*.java,*.js :call <SID>StripTrailingWhitespaces()

" UI config
set number
set showcmd

" Custom Keymaps
" Remap esc to hh
inoremap jj <ESC>
let mapleader = "\<Space>"
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" Emmet settings
let g:user_emmet_leader_key=','

" Markdown Preview settings
let vim_markdown_preview_github=1
let vim_markdown_preview_temp_file=1

" Vim Hardmode settings
" let g:hardtime_default_on = 1

" Plugin manager
call plug#begin('~/.vim/plugged')
Plug 'mattn/emmet-vim'
Plug 'https://github.com/vim-ruby/vim-ruby'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'https://github.com/mxw/vim-jsx'
Plug 'kaicataldo/material.vim'
Plug 'JamshedVesuna/vim-markdown-preview'
" Vim HardTime
Plug 'takac/vim-hardtime'
call plug#end()
