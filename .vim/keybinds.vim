" Set leader key
let mapleader = "\<Space>"

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
" xnoremap <leader>p "_dP
" nnoremap <leader>d "_d
" vnoremap <leader>d "_d

" Open new file
nnoremap <Leader>e :enew<CR>

" Copy shortcut
vnoremap <leader>y :w !wl-copy<CR><CR>

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
" nnoremap <silent> <leader>y <Plug>OSCYankOperator
" vnoremap <silent> <leader>y <Plug>OSCYankVisual

" Reload vimrc (adjust path as needed)
nnoremap <leader>rl :source ~/.vim/vimrc<CR>

" Source current file
nnoremap <leader><leader> :so<CR>

" split window horizontally
nnoremap ss :split
" split window vertically
nnoremap sv :vsplit

" -- Increase vertical split width (Alt + Shift + Right Arrow)
nnoremap <A-S-Left> :vertical resize +2<CR>

" -- Decrease vertical split width (Alt + Shift + Left Arrow)
nnoremap <A-S-Right> :vertical resize -2<CR>

" -- Increase window height (Alt + Shift + Up Arrow)
nnoremap <A-S-Down> :resize +2<CR>

" -- Decrease window height (Alt + Shift + Down Arrow)
nnoremap <A-S-Up> :resize -2<CR>

" -- Navigate between tabs
nnoremap <silent> <C-l> :bnext<CR>
nnoremap <silent> <C-h> :bprevious<CR>
nnoremap <silent> <C-Right> :bnext<CR>
nnoremap <silent> <C-Left> :bprevious<CR>

" -- Navigate between windows
nnoremap <M-Left> <C-w>h
nnoremap <M-Down> <C-w>j
nnoremap <M-Up> <C-w>k
nnoremap <M-Right> <C-w>l
""""
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l


" -- Fast horizontal movement (left/right) with Shift + Arrow keys in normal mode
nnoremap <S-Right> 7l
nnoremap <S-Left> 7h

" -- Fast horizontal movement (left/right) with Shift + Arrow keys in visual mode
vnoremap <S-Right> 7l
vnoremap <S-Left> 7h

" -- Fast vertical movement (up/down) with Shift + Arrow keys in normal mode
nnoremap <S-Down> 4j
nnoremap <S-Up> 4k

" -- Fast vertical movement (up/down) with Shift + Arrow keys in visual mode
vnoremap <S-Down> 4j
vnoremap <S-Up> 4k

" -- Fast vertical movement (up/down) with Shift + Arrow keys in insert mode
inoremap <S-Down> <C-o>4j
inoremap <S-Up> <C-o>4k

" -- Redo shortcut
nnoremap <M-r> <C-r>

" -- Close the buffer tab
nnoremap <silent> <leader>x :bd!<CR>

" -- Run the LaTeX PDF Preview plugin
" nnoremap <silent> <leader>p :call BuildAndView()<CR>

" -- NERDTree
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <silent> <A-t> :NERDTreeToggle<CR>
nnoremap <silent> <A-f> :NERDTreeFind<CR>

" nnoremap <F5> :w<CR>:!g++ % -o a.out && ./a.out<CR>


