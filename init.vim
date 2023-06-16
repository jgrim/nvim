if &compatible
    set nocompatible
endif

" Declare the general config group for autocommand
augroup vimrc
  autocmd!
augroup END

"Detect OS
if !exists('g:env')
    if has('win64') || has('win32') || has('win16')
        let g:env = 'WINDOWS'
    else
        let g:env = toupper(substitute(system('uname'), '\n', '', ''))
    endif
endif

"OS specific logic examples
" if g:env =~ 'DARWIN'
"     " ... to do Mac OS X-specific stuff.
" endif

" if g:env =~ 'LINUX'
"     " ... to do Linux-specific stuff.
" endif

" if g:env =~ 'WINDOWS'
"     " ... to do Windows-specific stuff.
" endif

" if g:env =~ 'CYGWIN'
"     " ... to do Cygwin-specific stuff.
" endif

" if g:env =~ 'MINGW'
"     " ... to do MinGW-specific stuff (Git Bash, mainly).
" endif

"If mac set python paths
"if g:env =~ 'DARWIN'
    " Make these load from a system type config
    "let g:python2_host_prog = '/usr/local/bin/python'
    "let g:python3_host_prog = '/usr/local/bin/python3'
"endif

"Include settings and keys
exe 'source '.stdpath('config').'/plugins.vim'
exe 'source '.stdpath('config').'/general.vim'
exe 'source '.stdpath('config').'/keys.vim'
exe 'source '.stdpath('config').'/filetypes.vim'

"Source every plugin configs
for file in split(glob(stdpath('config')."/plugins/*.vim"), '\n')
    exe 'source' file
endfor

"Source custom local configurations
for file in split(glob(stdpath('config')."/local/*.vim"), '\n')
    exe 'source' file
endfor

"Custom Functions

"Toggle terminal
let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

