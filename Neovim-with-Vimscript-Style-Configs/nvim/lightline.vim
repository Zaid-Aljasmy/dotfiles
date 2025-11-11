set laststatus=2
set showtabline=2

let g:lightline = {
      \ 'colorscheme' : 'tokyonight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'filename': 'LightlineFilename'
      \ },
      \ 'tabline': { 'left': [ [ 'buffers' ] ] },
      \ 'component_expand': { 'buffers': 'lightline#bufferline#buffers' },
      \ 'component_type': { 'buffers': 'tabsel' }
      \ }

function! LightlineFilename()
  return expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

