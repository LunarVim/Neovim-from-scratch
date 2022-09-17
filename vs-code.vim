
"   ____                           _    ____             __ _
"  / ___| ___ _ __   ___ _ __ __ _| |  / ___|___  _ __  / _(_) __ _
" | |  _ / _ \ '_ \ / _ \ '__/ _` | | | |   / _ \| '_ \| |_| |/ _` |
" | |_| |  __/ | | |  __/ | | (_| | | | |__| (_) | | | |  _| | (_| |
"  \____|\___|_| |_|\___|_|  \__,_|_|  \____\___/|_| |_|_| |_|\__, |
"                                                             |___/

set hlsearch                        " Enable search highlighting.
set ignorecase                      " Ignore case when searching.
set incsearch                       " Incremental search that shows partial matches.
set smartcase                       " Automatically switch search to case-sensitive when search query contains an uppercase letter.
set formatoptions-=cro              " Stop newline continution of comments

" set lazyredraw                      " Don’t update screen during macro and script execution.

" Text Rendering Options
set scrolloff=4                     " The number of screen lines to keep above and below the cursor.
set sidescrolloff=5                 " The number of screen columns to keep to the left and right of the cursor.

" User Interface Options
" set ruler                         " Always show cursor position.
set wildmenu                        " Display command line’s tab complete options as a menu.
set mouse=a                         " Enable mouse for scrolling and resizing.

set splitbelow splitright           " Default Split at right no below
set history=1000

autocmd BufWritePre * %s/\s\+$//e   " Automatically delete trailing white spaces on save

"  _  __            __  __                   _
" | |/ /___ _   _  |  \/  | __ _ _ __  _ __ (_)_ __   __ _
" | ' // _ \ | | | | |\/| |/ _` | '_ \| '_ \| | '_ \ / _` |
" | . \  __/ |_| | | |  | | (_| | |_) | |_) | | | | | (_| |
" |_|\_\___|\__, | |_|  |_|\__,_| .__/| .__/|_|_| |_|\__, |
"           |___/               |_|   |_|            |___/

" Remapping Leader key
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

" Run programs
" nnoremap <C-f5> :!g++ % -o %:r.out && %:p:h/%:r.out<CR>      " Run C/C++ Program

" Better tabbing/intend
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Some Normee Keys
nnoremap <C-s> :w<CR>         " Save in Normal mode
nnoremap <C-q> :wqa<CR>       " Save and quit

" Clipboard
set clipboard=unnamedplus           " Set default clipboard to system clipboard
" requires gvim/neovim/vin-x11 installed
vnoremap <C-c> "+y                  " Control c in Visual mode to copy to system clipboard

" Move Selected line
xnoremap K :move '<-2<CR>gv-gv      " move selected line above
xnoremap J :move '>+1<CR>gv-gv      " move selected line below

