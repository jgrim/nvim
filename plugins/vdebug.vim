if !exists('g:vdebug_options')
    let g:vdebug_options = {}
endif
let g:vdebug_keymap = {
    \    "run" : "<Leader>d",
    \    "run_to_cursor" : "<F9>",
    \    "step_over" : "so",
    \    "step_into" : "si",
    \    "step_out" : "sx",
    \    "close" : "<Leader>c",
    \    "detach" : "<F7>",
    \    "set_breakpoint" : "<Leader>b",
    \    "get_context" : "c",
    \    "eval_under_cursor" : "e",
    \    "eval_visual" : "<Leader>e",
    \}
let g:vdebug_options['path_maps'] = {"/var/www/strides": "/Users/jgrim/PhpStormProjects/Strides"}
