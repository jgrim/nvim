if &compatible
    set nocompatible
endif

" Make these load from a system type config
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

"Include settings and keys
exe 'source '.stdpath('config').'/plugins.vim'
exe 'source '.stdpath('config').'/general.vim'
exe 'source '.stdpath('config').'/keys.vim'

" source every plugin configs
for file in split(glob("plugins/*.vim"), '\n')
    exe 'source' file
endfor
