syntax on

call pathogen#infect()
call pathogen#helptags()

" Set Leader key
let mapleader=","

" NerdTREE shortcuts
" ==================
:map <Leader>n :NERDTreeToggle<CR>
" Quit on opening files from the tree
let NERDTreeQuitOnOpen=1

" General sensible defaults
set expandtab     " use spaces for tabs
set nowrap        " don't wrap lines
set tabstop=2     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set title                " change the terminal's title

set nobackup
set noswapfile

" Allows toggling into paste mode
set pastetoggle=<F2>

" Switch window mappings /*{{{*/
nnoremap <A-Up> :normal <c-r>=SwitchWindow('+')<CR><CR>
nnoremap <A-Down> :normal <c-r>=SwitchWindow('-')<CR><CR>
nnoremap <A-Left> :normal <c-r>=SwitchWindow('<')<CR><CR>
nnoremap <A-Right> :normal <c-r>=SwitchWindow('>')<CR><CR>

function! SwitchWindow(dir)
  let this = winnr()
  if '+' == a:dir
    execute "normal \<c-w>k"
    elseif '-' == a:dir
    execute "normal \<c-w>j"
    elseif '>' == a:dir
    execute "normal \<c-w>l"
    elseif '<' == a:dir
    execute "normal \<c-w>h"
  else
    echo "oops. check your ~/.vimrc"
    return ""
  endif
endfunction
" /*}}}*/

" Quick alignment of text
nnoremap <leader>al :left<CR>
nnoremap <leader>ar :right<CR>
nnoremap <leader>ac :center<CR>

" Asthetics
" =======

set linespace=1
" Enable 256 colours
set t_Co=256

hi StatusLine     ctermfg=237 ctermbg=242
hi StatusLineNC   ctermfg=237 ctermbg=242
hi VertSplit      ctermfg=237 ctermbg=237
hi Statement      ctermfg=221
hi LineNr         ctermfg=240 ctermbg=236
hi Visual         ctermbg=234
hi Cursor     cterm=reverse ctermfg=1 ctermbg=2
hi iCursor     cterm=standout ctermfg=1 ctermbg=2
hi CursorLine     cterm=standout ctermfg=235
hi CursorColumn   cterm=standout ctermfg=233
hi ExtraWhitespace  ctermbg=235
hi Tab              ctermbg=red

" Show leading whitespace that includes spaces, and trailing whitespace.
:autocmd BufWinEnter * match ExtraWhitespace /\s\+\%#\@<!$/
" Highlight tabs
:autocmd BufWinEnter * match Tab /\t/

