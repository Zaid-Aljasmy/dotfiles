" Set leader key
let mapleader = " "

" Open netrw with <leader>cd
nnoremap <leader>cd :Ex<CR>

" Move selected lines up/down (like Alt-Up/Down)
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Join lines with cursor preserved
nnoremap J mzJ`z

" Scroll half-page and center cursor
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Center on next/previous search result
nnoremap n nzzzv
nnoremap N Nzzzv

" Paste without overwriting clipboard
xnoremap <leader>p "_dP
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" Copy shortcut
vmap <M-s> "+y

" Make <C-c> behave like <Esc> in insert mode
inoremap <C-c> <Esc>

" Navigate quickfix list using Ctrl-j/k
nnoremap <C-j> :lnext<CR>
nnoremap <C-k> :lprev<CR>
nnoremap <leader>cl :lclose<CR>

" Disable Ex mode (accidental Q)
nnoremap Q <nop>

" Location list navigation
nnoremap <leader>k :lnext<CR>zz
nnoremap <leader>j :lprev<CR>zz

" Doge doc generator
nnoremap <leader>dg :DogeGenerate<CR>

" Substitute word under cursor on line
nnoremap <leader>s :s/\<<C-r><C-w>\>//gI<Left><Left><Left>

" Make current file executable
nnoremap <leader>x :!chmod +x %<CR>

" Yank via OSCYank
nmap <leader>y <Plug>OSCYankOperator
vmap <leader>y <Plug>OSCYankVisual

" Reload vimrc (adjust path as needed)
nnoremap <leader>rl :source ~/.vim/vimrc<CR>

" Source current file
nnoremap <leader><leader> :so<CR>

" split window horizontally
nnoremap ss :split<CR>
" split window vertically
nnoremap sv :vsplit<CR>

" -- Increase vertical split width (Alt + Shift + Right Arrow)
nnoremap <A-S-Left> :vertical resize +2<CR>

" -- Decrease vertical split width (Alt + Shift + Left Arrow)
nnoremap <A-S-Right> :vertical resize -2<CR>

" -- Increase window height (Alt + Shift + Up Arrow)
nnoremap <A-S-Down> :resize +2<CR>

" -- Decrease window height (Alt + Shift + Down Arrow)
nnoremap <A-S-Up> :resize -2<CR>

" -- Navigate between tabs
nnoremap <C-Right> :bnext<CR>
nnoremap <C-Left> :bprevious<CR>

" -- Navigate between windows
nnoremap <M-Left> <C-w>h
nnoremap <M-Down> <C-w>j
nnoremap <M-Up> <C-w>k
nnoremap <M-Right> <C-w>l

" -- Fast horizontal movement (left/right) with Shift + Arrow keys in normal mode
nnoremap <S-Right> 7l   " Move 7 characters right
nnoremap <S-Left> 7h    " Move 7 characters left

" -- Fast horizontal movement (left/right) with Shift + Arrow keys in visual mode
vnoremap <S-Right> 7l   " Move 7 characters right
vnoremap <S-Left> 7h    " Move 7 characters left

" -- Fast vertical movement (up/down) with Shift + Arrow keys in normal mode
nnoremap <S-Down> 4j    " Move 4 lines down
nnoremap <S-Up> 4k      " Move 4 lines up

" -- Fast vertical movement (up/down) with Shift + Arrow keys in visual mode
vnoremap <S-Down> 4j    " Move 4 lines down
vnoremap <S-Up> 4k      " Move 4 lines up

" -- Fast vertical movement (up/down) with Shift + Arrow keys in insert mode
inoremap <S-Down> <C-o>4j   " Move 4 lines down
inoremap <S-Up> <C-o>4k     " Move 4 lines up

" -- Redo shortcut
nnoremap <M-r> <C-r>

" -- Close the buffer tab
nnoremap <leader>x :bd!<CR>

