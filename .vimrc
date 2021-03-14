""""""""""""""""""""""""""""""""""""""""""""""""""
" Description:
"   This is the .vimrc file
"
" Maintainer:
" 	Florian 'FloRide' Reimat
"
" Complete_version:
"   You can find the complete configuration,
"   including all the plugins used, here:
"   https://github.com/FloRide1/dotfiles
"
" Acknowledgements:
"   Several elements of this .vimrc come from Pierre Bourdon's config
"
""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob("~/.vim/autoload/plug.vim"))
    " Ensure all needed directories exist  (Thanks @kapadiamush)
    execute '!mkdir -p ~/.vim/plugged'
    execute '!mkdir -p ~/.vim/autoload'
    " Download the actual plugin manager
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')
" Airline :
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Theme :
Plug 'joshdick/onedark.vim'

" Markdown :
Plug 'instant-markdown/vim-instant-markdown', {'rtp': 'after'}

" Latex :
Plug 'lervag/vimtex'

" Icons :
Plug 'ryanoasis/vim-devicons'

" Auto Completion :
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" Syntax Highlight
Plug 'HerringtonDarkholme/yats.vim'

" Snippets :
Plug 'SirVer/ultisnips'
Plug 'thomasfaingnaert/vim-lsp-ultisnips'
Plug 'prabirshrestha/asyncomplete-ultisnips.vim'

" AutoSave :
Plug '907th/vim-auto-save'

" Misc :
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'

call plug#end()

" Enable filetype detection for plugins and indentation options
filetype plugin indent on

" Reload a file when it is changed from the outside
set autoread

""""""""""""""""""""""""""""""""""""""""""""""""""
" User interface
""""""""""""""""""""""""""""""""""""""""""""""""""

" Make backspace behave as expected
set backspace=eol,indent,start

" Set the minimal amount of lignes under and above the cursor
set scrolloff=5

" Show current mode
set showmode

" Show command being executed
set showcmd

" Show line number
set number

" Always show status line
set laststatus=2

" Enhance command line completion
set wildmenu

" Set completion behavior, see :help wildmode for details
set wildmode=longest:full,list:full

" Disable bell completely
set visualbell
set t_vb=

" Display whitespace characters
set list
set listchars=tab:>─,eol:¬,trail:\ ,nbsp:¤

set fillchars=vert:│

" Briefly show matching braces, parens, etc
set showmatch

" Enable line wrapping
set wrap

" Wrap on column 80
set textwidth=79

" Disable preview window on completion
set completeopt=longest,menuone

" Enables syntax highlighting
syntax on

" Highlight current line
set cursorline

" Enhanced indent
set smartindent

""""""""""""""""""""""""""""""""""""""""""""""""""
" Search options
""""""""""""""""""""""""""""""""""""""""""""""""""

" Ignore case on search
set ignorecase

" Ignore case unless there is an uppercase letter in the pattern
set smartcase

" Move cursor to the matched string
set incsearch

" Don't highlight matched strings
set nohlsearch

""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation options
""""""""""""""""""""""""""""""""""""""""""""""""""

" The length of a tab
" This is for documentation purposes only,
" do not change the default value of 8, ever.
set tabstop=8

" The number of spaces inserted/removed when using < or >
set shiftwidth=4

" The number of spaces inserted when you press tab.
" -1 means the same value as shiftwidth
set softtabstop=-1

" Insert spaces instead of tabs
set expandtab

" When tabbing manually, use shiftwidth instead of tabstop and softtabstop
set smarttab

" Set basic indenting (i.e. copy the indentation of the previous line)
" When filetype detection didn't find a fancy indentation scheme
set autoindent

""""""""""""""""""""""""""""""""""""""""""""""""""
" Spell
""""""""""""""""""""""""""""""""""""""""""""""""""

setlocal nospell
set spelllang=fr,en_gb,en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u



""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""

" Write as root, when you forgot to sudoedit
cnoreabbrev w!! w !sudo tee % >/dev/null

" Yank from cursor to end of line, to be consistent with C and D
nnoremap Y y$

" map ; to :
noremap ; :

" Split Screen
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

imap <C-w> <C-o><C-w>

map + <C-W>+
map - <C-W>-
map <M-<> <C-W><
map <M->> <C-W>>

" Run make silently, then skip the 'Press ENTER to continue'
noremap <leader>m :silent! :make! \| :redraw!<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Persistence options
""""""""""""""""""""""""""""""""""""""""""""""""""

" Set location of the viminfo file
set viminfo='20,\"50,<100,n~/.vimtmp/viminfo

" See :h last-position-jump
augroup last_position_jump
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" Persistent undo
if version >= 703
    set undofile
    set undodir=~/.vimtmp/undo
    silent !mkdir -p ~/.vimtmp/undo
endif

""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin mappings and options
""""""""""""""""""""""""""""""""""""""""""""""""""

" Vim Lsp
let g:lsp_diagnostics_enabled = 0 

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

" Ulti Snips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Nerd Tree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

" Git Gutter
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'


""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme
""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme onedark
let g:airline_powerline_fonts = 1
let g:airline_theme = 'onedark'
