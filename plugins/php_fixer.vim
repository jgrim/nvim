let g:php_cs_fixer_php_path = "php"
let g:php_cs_fixer_rules = "@PSR2"
let g:php_cs_fixer_verbose = 1
let g:vim_php_refactoring_default_property_visibility = 'private'
let g:vim_php_refactoring_default_method_visibility = 'private'
let g:vim_php_refactoring_auto_validate_visibility = 1
let g:vim_php_refactoring_phpdoc = "pdv#DocumentCurrentLine"

autocmd vimrc FileType php setlocal commentstring=\/\/\ %s
"autocmd vimrc FileType php nnoremap <leader>g :silent :call PhpCsFixerFixFile()<CR>
