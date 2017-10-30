if &compatible
  set nocompatible
endif

augroup MyAutoCmd
  autocmd!
augroup END

let s:dein_dir = expand('$CACHE/dein')

" Setting Start...
if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)
    let g:rc_dir    = expand("~/.vim/rc/toml/")
    call dein#load_toml(g:rc_dir . 'dein.toml',          {'lazy': 0})

    call dein#load_toml(g:rc_dir . 'dein_lazy.toml',     {'lazy': 1})
    call dein#load_toml(g:rc_dir . 'dein_neo.toml',      {'lazy': 1})
    call dein#load_toml(g:rc_dir . 'dein_python.toml',   {'lazy': 1})
    "call dein#load_toml(g:rc_dir . 'dein_go.toml',       {'lazy': 1})
    "call dein#load_toml(g:rc_dir . 'dein_frontend.toml', {'lazy': 1})

    " Setting End ...
    call dein#end()
    call dein#save_state()
endif

" If something missed, installing them.
if dein#check_install()
  call dein#install()
endif
