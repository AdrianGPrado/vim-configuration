"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-flake8 Python code analysis
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn on the whole plugin
let g:pymode = 1

" Enable python 3 syntax checking
let g:pymode_python = 'python3'

" Override run current python file key shortcut to Ctrl-Shift-e
let g:pymode_run_bind = "<C-S-e>"

" Override view python doc key shortcut to Ctrl-Shift-d
let g:pymode_doc_bind = "<C-S-d>"

" Setup max line length
let g:pymode_options_max_line_length = 80


let g:pymode_indent = 1


" Support Vim motion (See |operator|) for python objects (such as functions,
" class and methods).
" 
" `C` — means class
" `M` — means method or function
"
"  *pymode-motion-keys*
" ================  ============================
" Key               Command
" ================  ============================
" [[                Jump to previous class or function (normal, visual, operator modes)
" ]]                Jump to next class or function  (normal, visual, operator modes)
" [M                Jump to previous class or method (normal, visual, operator modes)
" ]M                Jump to next class or method (normal, visual, operator modes)
" aC                Select a class. Ex: vaC, daC, yaC, caC (normal, operator modes)
" iC                Select inner class. Ex: viC, diC, yiC, ciC (normal, operator modes)
" aM                Select a function or method. Ex: vaM, daM, yaM, caM (normal, operator modes)
" iM                Select inner function or method. Ex: viM, diM, yiM, ciM (normal, operator modes)
"  ================  ============================
" 

let g:pymode_motion = 1

let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'

let g:pymode_virtualenv = 1

let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" Turn on code checking
let g:pymode_lint = 1

" Check code on every save (if file has been modified)
let g:pymode_lint_on_write = 1

" Show error message if cursor placed at the error line
let g:pymode_lint_message = 1

" Default code checkers (you could set several)
let g:pymode_lint_checkers = ['pyflakes']

" Turn on the rope script
let g:pymode_rope = 1

let g:pymode_rope_completion = 1

" Turn on autocompletion when typing a period
let g:pymode_rope_complete_on_dot = 1

" Turn on pymode syntax
let g:pymode_syntax = 1
