let g:project_use_nerdtree=1
set rtp+=~/nvim/plugged/vim-project/

"Project callback functions
function! Symfony(...) 
    let g:ultisnips_php_scalar_types = 1

    " standard phpcs config
    let g:neomake_php_phpcs_args_standard = 'PSR2'

    " php cs fixer 
    let g:php_cs_fixer_php_path = "php"
endfunction

function! RemoveTextWidth(...) abort
"    nnoremap x w
endfunction

function! Test(...) abort
"    nnoremap x dd
endfunction

