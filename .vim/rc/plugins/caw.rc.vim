" mappings ( \c でカーソル行をコメントアウト, \C でコメントアウトを解除)
" NOTE: The <Leader> key is mapped to \ by default
" 行の最初の文字の前にコメント文字をトグル
nmap <Leader>c <Plug>(caw:hatpos:toggle)
vmap <Leader>c <Plug>(caw:hatpos:toggle)
"nmap <Leader>C <Plug>(caw:hatpos:uncomment)
"vmap <Leader>C <Plug>(caw:hatpos:uncomment)

" 行頭にコメントをトグル
"nmap <Leader>, <Plug>(caw:zeropos:toggle)
"vmap <Leader>, <Plug>(caw:zeropos:toggle)
