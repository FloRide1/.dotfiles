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

" Tmux :
Plugin 'christoomey/vim-tmux-navigator'

" Latex :
Plugin 'lervag/vimtex'

" Icons :
Plugin 'ryanoasis/vim-devicons'

" Auto Completion :
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'

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

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

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
