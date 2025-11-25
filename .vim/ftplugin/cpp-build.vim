autocmd FileType cpp nnoremap <buffer> <leader>b :w<Bar>call CompileAndRunCpp()<CR>

function! CompileAndRunCpp()
  let l:src = expand('%:p')
  let l:exe = tempname()
  let l:cmd = 'g++ '.shellescape(l:src).' -o '.shellescape(l:exe)
  execute 'vertical terminal ++shell sh -c '.shellescape(l:cmd.' && '.l:exe.'; rm '.l:exe)
endfunction

