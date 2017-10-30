" yankround.vim {{{
nmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)
let g:yankround_max_history = 35
nnoremap <Leader><C-p> :<C-u>Unite yankround<CR>
"}}}

" neocomplete {{{
let g:neocomplete#enable_at_startup               = 1
let g:neocomplete#auto_completion_start_length    = 3
let g:neocomplete#enable_ignore_case              = 1
let g:neocomplete#enable_smart_case               = 1
let g:neocomplete#enable_camel_case               = 1
let g:neocomplete#use_vimproc                     = 1
let g:neocomplete#sources#buffer#cache_limit_size = 1000000
let g:neocomplete#sources#tags#cache_limit_size   = 30000000
let g:neocomplete#enable_fuzzy_completion         = 1
let g:neocomplete#lock_buffer_name_pattern        = '\*ku\*'
" }}}


" Unit.vim {{{
let g:unite_enable_start_insert=1
nmap <silent> <C-u><C-b> :<C-u>Unite buffer<CR>
nmap <silent> <C-u><C-f> :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nmap <silent> <C-u><C-r> :<C-u>Unite -buffer-name=register register<CR>
nmap <silent> <C-u><C-m> :<C-u>Unite file_mru<CR>
nmap <silent> <C-u><C-u> :<C-u>Unite buffer file_mru<CR>
nmap <silent> <C-u><C-a> :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
" split window (horizontal)
au FileType unite nmap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite imap <silent> <buffer> <expr> <C-j> unite#do_action('split')
" split window (vertical)
au FileType unite nmap <silent> <buffer> <expr> <C-k> unite#do_action('vsplit')
au FileType unite imap <silent> <buffer> <expr> <C-k> unite#do_action('vsplit')
"ESC key 2 times --> quit
au FileType unite nmap <silent> <buffer> <ESC><ESC> q
au FileType unite imap <silent> <buffer> <ESC><ESC> <ESC>q
" }}}


" caw.vim {{{
" \c でカーソル行をコメントアウト, \C でコメントアウトを解除
nmap \c <Plug>(caw:I:toggle)
vmap \c <Plug>(caw:I:toggle)
nmap \C <Plug>(caw:I:uncomment)
vmap \C <Plug>(caw:I:uncomment)
" }}}


" Previm {{{
let g:previm_open_cmd = 'open -a /Applications/Google\ Chrome.app'
" let g:previm_enable_realtime = 1
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END
" }}}

" auto save {{{
" let g:auto_save = 1 " enable auto save on vim startup 
let g:auto_save_silent = 1 "do not display the auto-save notification
" }}}


" latex setting
"if filereadable(expand('~/.vimrc.local'))
"    source ~/.vimrc.local
"endif
"=========== vim Latex ==============================
" http://adragoona.hatenablog.com/entry/2014/11/26/203044

filetype plugin on
let tex_flavor = 'latex'
set grepprg=grep\ -nH\ $*
set shellslash
let g:Tex_DefaultTargetFormat = 'pdf' 
let g:Tex_CompileRule_dvi = 'platex --interaction=nonstopmode $*'
let g:Tex_CompileRule_pdf = 'dvipdfmx $*.dvi'
let g:Tex_FormatDependency_pdf = 'dvi,pdf'


