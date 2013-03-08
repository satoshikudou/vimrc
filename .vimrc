let g:neocomplcache_enable_at_startup = 1

call pathogen#infect()
syntax on
filetype plugin indent on
colorscheme darkblue
set ts=2 sw=2 et

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

let g:rails_syntax=1

set backspace=indent,eol,start
set laststatus=2 " show bottom statusline
set nocompatible
set noswapfile
set nobackup
set number " line number
set wrap
set clipboard=unnamed
set autoread " autored when the file is modified
set expandtab
set incsearch
set showmatch
set modifiable
set smartindent

" statusline
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

compiler ruby
let ruby_space_errors=1

" colorscheme for statusline
augroup InsertHook
    autocmd!
    autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
    autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END
