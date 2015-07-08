" A lot of these are tips gathered from various people. Gowri (my coleague at
" Ziva Software) suggested a good lot of them to start with. Several of these
" are now also based on the settings found at
" http://github.com/twerth/dotfiles

set nocompatible
set notitle

" Tabs ************************************************************************
"set sta " a <Tab> in an indent inserts 'shiftwidth' spaces
function! Tabstyle_4()
  " Using 4 spaces
  set softtabstop=4
  set shiftwidth=4
  set tabstop=4
  set expandtab
endfunction
function! Tabstyle_2()
  " Use 2 spaces
  set softtabstop=2
  set shiftwidth=2
  set tabstop=2
  set expandtab
endfunction
function! Tabstyle_4Tabs()
  set softtabstop=4
  set shiftwidth=4
  set tabstop=4
endfunction
"call Tabstyle_4()
"call Tabstyle_2()
call Tabstyle_4Tabs()


" Indenting *******************************************************************
set ai " Automatically set the indent of a new line (local to buffer)
set si " smartindent  (local to buffer)


" Scrollbars ******************************************************************
set sidescrolloff=2
set numberwidth=4


" Windows *********************************************************************
set equalalways " Multiple windows, when created, are equal in size
set splitbelow splitright

" Vertical split then hop to new buffer
:noremap ,v :vsp^M^W^W<cr>
:noremap ,h :split^M^W^W<cr>


" Searching *******************************************************************
set hlsearch " highlight search
set incsearch " incremental search, search as you type
set ignorecase " Ignore case when searching
set smartcase " Ignore case when searching lowercase
set infercase " Smarter case modification in completion


" Colors **********************************************************************
"set t_Co=256 " 256 colors
set background=dark
syntax on " syntax highlighting
colorscheme sids-desert


" Status Line *****************************************************************
set showcmd
"set ruler " Show ruler
"set ch=2 " Make command line two lines high


" Line Wrapping ***************************************************************
"set nowrap
set linebreak " Wrap at word


" File Stuff ******************************************************************
filetype plugin indent on
" To show current filetype use: set filetype

autocmd FileType html :set filetype=xhtml " we couldn't care less about html


" Inser New Line **************************************************************
map <S-Enter> O<ESC> " awesome, inserts new line without going into insert mode
map <Enter> o<ESC>
set fo-=r " do not insert a comment leader after an enter, (no work, fix!!)


" Sessions ********************************************************************
" Sets what is saved when you save a session
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize


" Mouse ***********************************************************************
set mouse=a " Enable the mouse
behave xterm
set selectmode=mouse


" Cursor Movement *************************************************************
" Make cursor move by visual lines instead of file lines (when wrapping)
map <up> gk
map k gk
imap <up> <C-o>gk
map <down> gj
map j gj
imap <down> <C-o>gj
map E ge


" Ruby stuff ******************************************************************
"compiler ruby " Enable compiler support for ruby
"map <F5> :!ruby %<CR>


" Omni Completion *************************************************************
autocmd FileType html :set omnifunc=htmlcomplete#CompleteTags
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete " may require ruby compiled in


" Match defined pairs *********************************************************
set showmatch
set matchpairs+=(:),{:},[:],<:>,`:`,':',":"
set matchtime=2
" let loaded_matchparen=1


" Misc ************************************************************************
set backspace=indent,eol,start
"set vb t_vb= " Turn off the bell, this could be more annoying, but I'm not sure how
set autowrite

" Set list Chars - for showing characters that are not
" normally displayed i.e. whitespace, tabs, EOL
"set listchars=
"set listchars+=trail:·
"set listchars+=tab:>-
"set listchars+=eol:$
"set list
set nolist

" after selecting something in visual mode and shifting, I still want that
" selection in the same mode
vmap > >gv
vmap < <gv

"how cud i live without persistent cmd history?
"set viminfo='10,/10,:100,n$VIM/_viminfo

" I do not want to see the mouse pointer in the vim window while I am typing
set mousehide

" window title
"let &titlestring = expand("%:p:~:.:h%l")
"set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)%(\ %a%)
"set title
"set titleold=""


" rid of the toolbar in GVim
set guioptions-=T

set shell=bash

" so that stuff like <S-CR>, <S-Left> etc. work in insert mode 
" (thanks, Gowri!)
" set iminsert=0

" so that stuff like <CR> works in map commands
set cpo-=<

" folding
set nofen   " don't enable folding by default
set foldmethod=indent
set foldlevel=1
set foldnestmax=2
set fillchars=stl:_,stlnc:-,vert:\|,fold:\ ,diff:-
map <Leader>f :let &fen = !&fen<CR>

map <Leader>tn <Esc>:tabnew<CR>
map <Leader>tN <Esc>:tabnew 
map <Leader>tc <Esc>:tabclose<CR>
map <Leader>tl <Esc>:tabnext<CR>
map <Leader>tk <Esc>:tabnext<CR>
map <Leader>th <Esc>:tabprev<CR>
map <Leader>tj <Esc>:tabprev<CR>

" this is useful in defining abbreviations
func Eatchar(pat)
    let c = nr2char(getchar(0))
    return (c =~ a:pat) ? '' : c
endfunc

" for gf, find etc.
" set path+=**

if filereadable("./.dvimrc")
    source ./.dvimrc
endif

" for code-completion
"set complete=i,],.,b,w,t,k,.
set dictionary=~/.vim/dictionary

" use tab for code-completion
inoremap <C-Tab> <C-R>=InsertTabWrapper("forward")<CR>
inoremap <S-Tab> <C-R>=InsertTabWrapper("backward")<CR>
inoremap <C-S-Tab> <C-R>=InsertTabWrapper("omni")<CR>
function! InsertTabWrapper(direction)
    if pumvisible()
        return "\<C-N>"
    endif
    " if we are at the first column but with following characters after
    " our actual position, we probably want a TAB, not completion
    if col('.') == 1
        return "\<Tab>"
    " put tab on empty lines
    elseif getline('.') =~ '^$'
        return "\<Tab>"
    " also if the previous char is a space char
    elseif strpart(getline('.'), col('.') - 2, 1) =~ '^\s$'
        return "\<Tab>"
    " but start completion mode if previous char isn't a space char
    elseif "backward" == a:direction
        return "\<C-P>"
    elseif "forward" == a:direction
        return "\<C-N>"
    elseif exists('&omnifunc') && &omnifunc != ''
        return "\<C-X>\<C-O>"
    else
        return ""
    endif
endfunction

"-------------------------------------------------------------------------------
" latex-suite
"-------------------------------------------------------------------------------
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse latex-suite. Set your grep
" program to alway generate a file-name.
set grepprg=grep\ -nH\ $*

"nmap <silent> <Leader>p :Project<CR>

runtime macros/matchit.vim

set pastetoggle=<C-P> " Ctrl-P toggles paste mode

" Ctrl+C/V for copy paste
"nmap <S-C-V> "+gP
imap <S-C-V> <ESC>"+gPi
vmap <S-C-C> "+y



" clojure:
let vimclojure#NailgunClient = "/home/sids/Sources/vimclojure/ng"
let clj_want_gorilla = 1


" awesome parens etc.

inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
"inoremap { {<CR>}<Esc>O
autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=CloseBracket()<CR>
inoremap " <c-r>=QuoteDelim('"')<CR>
"inoremap ' <c-r>=QuoteDelim("'")<CR>

function ClosePair(char)
 if getline('.')[col('.') - 1] == a:char
 return "\<Right>"
 else
 return a:char
 endif
endf

function CloseBracket()
 if match(getline(line('.') + 1), '\s*}') < 0
 return "\<CR>}"
 else
 return "\<Esc>j0f}a"
 endif
endf

function QuoteDelim(char)
 let line = getline('.')
 let col = col('.')
 if line[col - 2] == "\\"
 "Inserting a quoted quotation mark into the string
 return a:char
 elseif line[col - 1] == a:char
 "Escaping out of the string
 return "\<Right>"
 else
 "Starting a string
 return a:char.a:char."\<Esc>i"
 endif
endf
