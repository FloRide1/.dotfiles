set nocompatible              " be iMproved, required
filetype off                  " required

	" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" --- Plugins ---
" Airline :
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Theme :
Plugin 'joshdick/onedark.vim'

" Markdown :
Plugin 'instant-markdown/vim-instant-markdown', {'rtp': 'after'}

" Latex :
Plugin 'lervag/vimtex'

" Icons :
Plugin 'ryanoasis/vim-devicons'

" Auto Completion :
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'

" Syntax Highlight
Plugin 'HerringtonDarkholme/yats.vim'

" Snippets :
Plugin 'SirVer/ultisnips'
Plugin 'thomasfaingnaert/vim-lsp-ultisnips'
Plugin 'prabirshrestha/asyncomplete-ultisnips.vim'

" Vundle : 
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" AutoSave :
Plugin '907th/vim-auto-save'

" Misc :
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'

call vundle#end()            " required
filetype plugin indent on    " required

" --- User Config ---
set number
syntax on
set tabstop=4
set shiftwidth=4
" set expandtab
set cursorline
set autoindent
set smartindent
set hlsearch
set incsearch

setlocal nospell
set spelllang=fr,en_gb,en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

map <f9> :make

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


" --- Theme ---

colorscheme onedark
let g:airline_powerline_fonts = 1
let g:airline_theme = 'onedark'
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
