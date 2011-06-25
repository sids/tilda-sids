" vimclojure variables
let clj_highlight_builtins = 1
let clj_highlight_contrib = 1
let clj_paren_rainbow = 1

" press ( to go to the beginning of the parent list
:nmap ( [(
" press ) to go to the end of the parent list
:nmap ) ])


" add parens around selected text: select text and press (
:vnoremap ( <Esc>`>a)<Esc>`<i(<Esc>


" add parens around the current list:
" place cursor at beginning of list and press \(
:nmap <Leader>( v%(a <Esc>i
