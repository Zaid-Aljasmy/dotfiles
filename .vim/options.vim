filetype plugin indent on
syntax on

" Line numbers
set number
set relativenumber

" Indentation and tabs
set softtabstop=4
set smartindent
set showmatch
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap <expr> <CR> search('{\%#}', 'n') ? "\<CR>\<CR>\<Up>\<C-f>" : "\<CR>"

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch

" Appearance
set background=dark
" set cursorcolumn
set signcolumn=no
set cursorline
set colorcolumn=80
" set noruler
" set noshowmode
" let g:netrw_banner = 0

" Backspace behavior
set backspace=indent,eol,start

" Split window behavior
set splitbelow
set splitright

" dw/diw/ciw treat dash-separated words as single word
set iskeyword+=-

" Keep cursor 8 lines from top/bottom
set scrolloff=8

" Cursor responsiveness
set updatetime=50

set laststatus=2


" -- Restore cursor position
augroup restore_cursor
  autocmd!
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal! g'\"" |
        \ endif
augroup END

" -- Set Normal highlight background to transparent
hi Normal guibg=NONE

" -- Disable swapfile
set noswapfile

" -- Disable backup file
" set nobackup


