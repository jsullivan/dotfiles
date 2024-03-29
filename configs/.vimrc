" CONTENTS
" =-=-=-=-=-=-=-=-
" BASIC OPTIONS
" KEY BINDINGS
" FILETYPES
" EDITING
" WINDOW SETTINGS
" PLUGINS
" =-=-=-=-=-=-=-=-
"
" BASIC OPTIONS
" =-=-=-=-=-=-=-=-
" Emergency set kj to esc
:imap kj <Esc>

" Make vim behave better than vi-compatible mode
set nocompatible

set encoding=utf-8

" Use status line to show auto-complete & more
set wildmenu

" TAB autocompletion for file paths
set wildmode=full

" Improve behavior of auto-complete popup
set completeopt=longest,menuone

" Better buffer management
set hidden

" Miscellaneous Options. Values:
"   a: ":read" sets window filename
"   A: ":write" sets window filename
"   B: backslash has no special meaning in ":map"
"   c: search continues from the end of the match
"   e: automatically add <CR> to the end of executed registers
"   F: ":write" sets buffer filename
"   s: set buffer options on entering the buffer
"   W: refuse to overwrite a readonly file, even with :w!
"   Z: don't reset 'readonly' when using :w!
set cpoptions=aABceFsWZ

set wildignore+=*.png,*.jpg,*.gif,*.ai,*.jpeg,*.psd,*.swp,*.jar,*.zip,*.gem,.DS_Store,log/**,tmp/**,coverage/**,rdoc/**

" Reduce delay when switching back into normal mode
set timeoutlen=1000 ttimeoutlen=0

" Show whitespace
" set list

" Swap files annoy me.
set noswapfile

" Stick with short lines.
set textwidth=80
set colorcolumn=+1

" Use 256 colors
set t_Co=256

" Make new vsplits open to the right of current buffer
set splitright

" Make new horiz splits open below current buffer
set splitbelow

" Load plugins via pathogen
call pathogen#infect()

" Turn on syntax highlighting
syntax enable

" Let JSX syntax highlight on .js files too
let g:jsx_ext_required = 0

" Set the color scheme
let g:solarized_termcolors=256
colorscheme solarized " I also like: beauty256
set background=light

" Spelling. When you need it you need it.
hi SpellErrors guibg=red guifg=black ctermbg=red ctermfg=black

" CursorLine for the current window(buffer) only.
augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

" Set the cursorline to something a bit more tolerable.
hi CursorLine guibg=#dfdfdd

" KEY BINDINGS
" =-=-=-=-=-=-=-=-
let mapleader=',' " set leader to ,

" Format paragraphs (72 columns)
map ^^ {!}par w72qrg<CR>

" One-stroke window maximizing
" To return to previous tab split setup, use ':tabclose'
map <C-H> <C-W>h<C-W><BAR>
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W><BAR>

" Quick buffer switching
map <leader>[ :bprevious<CR>
map <leader>] :bnext<CR>

" Shortcut to strip trailing whitespace
map <leader>s :%s/\s\+$//g<CR>

" Re-tab the document (tabs to spaces)
nmap <silent> <leader><S-t> :retab!<CR>

" <leader>e to edit files
nmap <leader>e :e **/
cmap <leader>e **/

" Keep selections when indenting in visual mode
xnoremap > >gv
xnoremap < <gv

" Split a line with CTRL-J
nnoremap <NL> i<CR><ESC>

" Remap the 'kj' keyboard input whilst in Insert mode to switch to Normal mode
" This is a handy way to go back to Normal mode without reaching for the <Esc>
" key and there aren't many english words that have 'k' and 'j' used next to
" each other.
" inoremap kj <Esc>

" Spelling
" ss  - toggle spelling
" sa  - add word
" sn  - next misspelled word
" sp  - previous misspelled word
" s?  - suggest spelling
nnoremap <Leader>ss :setlocal spell!<CR>
nnoremap <Leader>sa zg
nnoremap <Leader>sn ]s
nnoremap <Leader>sp ]p
nnoremap <Leader>s? z=

" FILETYPES
" =-=-=-=-=-=-=-=-
" use filetype plugins to determine indent settings
filetype plugin indent on

" Using autocmd for the below settings  allows it to be reset every time you open a
" file, which keeps overrides from being persistent

" ruby and yaml indentation
autocmd FileType ruby,rdoc,css,scss,yaml,html,haml,javascript,eruby,markdown,tf set softtabstop=2 shiftwidth=2 tabstop=2 expandtab
autocmd BufNewFile,BufRead Gemfile     setfiletype ruby
autocmd BufNewFile,BufRead config.ru   setfiletype ruby
autocmd BufNewFile,BufRead *.jst       setfiletype eruby.html
"
"set *.gv files to dot syntax
autocmd BufRead,BufNewFile *.gv set filetype=dot

" markdown
autocmd BufRead,BufNewFile *.mkd,*.markdown,*.md,*.mdown,*.mkdn set softtabstop=2 shiftwidth=2 tabstop=2 filetype=markdown expandtab

" set filetype on config files
autocmd BufNewFile,BufRead ~/.vim/*  setfiletype vim

" golang indentation
autocmd FileType go,dot,*.gv set softtabstop=4 shiftwidth=4 tabstop=4 expandtab

" EDITING
" =-=-=-=-=-=-=-=-
set nu          " set line numbers (this sets the current line number when userd with relative line numbers
set rnu         " relative line numbers
set showbreak=+ " display a + at the beginning of a wrapped line
set showmatch   " flash the matching bracket on inserting a )]} etc

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set listchars=tab:»·,trail:· " show tabs and trailing spaces

" show a » when a line goes off the right edge of the screen
set listchars+=extends:»

" show a « when a line goes off the left edge of the screen
set listchars+=precedes:«

" Find and replace command to convert ruby hashrockets to new syntax
command! -range=% Hr silent execute <line1>.','.<line2>.'s/:\(\w\+\)\s*=>\s*/\1: /g'

"FOLDING OPTIONS
" enable folding
set foldenable
set foldmethod=manual

" start with all folds collapsed when switching buffers
set foldlevelstart=0

" adds two columns of fold status on the left-hand side of the screen
set foldcolumn=2

"SEARCH OPTIONS
" makes search patterns case-insensitive by default
set ignorecase

" overrides ignorecase when the pattern contains upper-case characters
set smartcase

" Show hits on a search pattern as you type
set incsearch

"SWAP & UNDO OPTIONS
" global swapfile directory
set directory=~/.vim/swapfiles,/var/tmp,/tmp,.
" persistent undo
if has("persistent_undo")
  set undofile
  set undodir=~/.vim/undofiles,/var/tmp,/tmp,.
endif

" WINDOW SETTINGS
" =-=-=-=-=-=-=-=-
set ruler          " shows cursor position in the lower right
set showcmd        " shows incomplete command to the left of the ruler
set winminheight=1 " allow windows to be 0 lines tall
set winminwidth=2  " allow windows to be 0 lines wide
set laststatus=2   " always show statusline

" set up statusline, ends up looking like this:
"   [1] window.vimrc [Preview] [vim,+]            @ L22 C51 (66%)(14)
set statusline=
set statusline+=%n:\                      " buffer number
set statusline+=%f                        " filename
set statusline+=%<                        " truncate here if necessary
set statusline+=%10w                      " displays [Preview] if it is
set statusline+=\ [                       " fix spacing, open bracket
set statusline+=%{strlen(&ft)?&ft:'none'} " filetype
set statusline+=%M                        " + if modified, - if r/o
set statusline+=]                         " close bracket
set statusline+=%=                        " right-align remainder
set statusline+=@\ L%l\ C%c\ (%P)(%L)\    " position in file and number of lines

" PLUGINS
" =-=-=-=-=-=-=-=-

"Limelight
" This configures limelight to automatically activate when Goyo is used.
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

"vim-illuminate
" Configure the way other words under the cursor are highlighted
hi illuminatedWord cterm=standout gui=standout

"bufexplorer
let g:bufExplorerDetailedHelp=1     " show full help text by default
let g:bufExplorerShowRelativePath=1 " use relative paths

"json
let g:vim_json_syntax_conceal = 0 " Don't conceal quotes

"NERDCommenter
let NERDCreateDefaultMappings=0 " disable default mappings
let NERDMenuMode=0              " disable menu
let NERDSpaceDelims=1           " place spaces after comment chars
let NERDDefaultNesting=0        " don't recomment commented lines

map <leader>cc <plug>NERDCommenterToggle
map <leader>cC <plug>NERDCommenterSexy

"NetRW
let g:netrw_liststyle=3
let g:netrw_banner=0

"Tabular
" sets ,a to align = and => lines
map <leader>a :Tabularize /=>\?<cr>

" Go-lint add linting via :Lint
set rtp+="$GOPATH/src/golang.org/x/lint/misc/vim"

" vim-go
let g:go_fmt_command = "goimports"

" fzf
"set rtp+=/usr/local/opt/fzf
"let g:fzf_layout = { 'down': '~40%' }
