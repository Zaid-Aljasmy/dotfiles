filetype plugin indent on
set softtabstop=4
set smartindent
set showmatch
syntax on

" Line numbers
set number
set relativenumber

" Indentation and tabs
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab

" Search
set ignorecase
set smartcase
set incsearch

" Appearance
set background=dark
set signcolumn=no
set cursorline
set colorcolumn=80

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

" -- Ignore case while searching
set ignorecase

" -- Override ignorecase if search contains uppercase letters
set smartcase

" -- Disable swapfile
set noswapfile

" -- Disable backup file
" set nobackup

" -- Highlight column at 80 characters
set colorcolumn=80

" -- Highlight search matches
set hlsearch

" -- Show search matches as you type
set incsearch

" -- Do not show current mode (like -- INSERT --)
set noshowmode

" -- Disable ruler (line/column info)
set noruler

" -- Disable netrw banner
" let g:netrw_banner = 0
