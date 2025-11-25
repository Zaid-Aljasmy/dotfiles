let s:zathura_opened = 0

let s:home = expand("~")
let s:source_dir = s:home . "/LaTeX/LaTeX-Source-Files"
let s:main_dir = s:home . "/LaTeX/LaTeX-PDF"
let s:build_dir = s:main_dir . "/build"
let s:pdf_dir = s:main_dir . "/pdf"

function! s:ZathuraRunning()
  let l:pid = system("pidof zathura")
  return l:pid !=# "" && l:pid !=# "\n"
endfunction

function! s:BuildTex()
  if &filetype !=# 'tex'
    return
  endif
  write
  let l:texfile = expand("%:p")
  let l:filename = expand("%:t:r")
  call mkdir(s:source_dir, "p")
  call mkdir(s:build_dir, "p")
  call mkdir(s:pdf_dir, "p")
  let l:build_pdf = s:build_dir . "/" . l:filename . ".pdf"
  let l:final_pdf = s:pdf_dir . "/" . l:filename . ".pdf"
  let l:cmd = printf("pdflatex -interaction=nonstopmode -halt-on-error -output-directory=%s %s",
        \ s:build_dir, l:texfile)
  call system(l:cmd)
  if filereadable(l:build_pdf)
    call system("mv -f " . shellescape(l:build_pdf) . " " . shellescape(l:final_pdf))
  endif
endfunction

function! s:OpenZathura()
  if &filetype !=# 'tex'
    return
  endif
  let l:filename = expand("%:t:r")
  let l:final_pdf = s:pdf_dir . "/" . l:filename . ".pdf"
  if filereadable(l:final_pdf) && !s:ZathuraRunning()
    call job_start(["zathura", l:final_pdf], {})
  endif
endfunction

autocmd FileType tex nnoremap <silent> <buffer> <leader>b :call <SID>BuildTex()<CR>
autocmd FileType tex nnoremap <silent> <buffer> <leader>v :call <SID>OpenZathura()<CR>

