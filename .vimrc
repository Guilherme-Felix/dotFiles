let mapleader = ","
" execute pathogen#infect()
" Syntax Highlight On
"filetype plugin indent on
syntax on
"
" " Corretor Ortografico pt-br
" "spell
set spelllang=pt
"
" Mostrar numeracao de linhas
set number

" Autoidentacao
set autoindent

" Destaque na busca enquanto se digita
set incsearch

" Mostrar numeracao relativa
set relativenumber

" Menu acima da barra de digitacao
set wildmenu

" Confirmacao apos edicao de arquivos
set confirm

" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

" Criar 'folds' - colapsar blocos indentados (funcoes, classes, etc)
set foldmethod=indent

" Truque para funcionar o plugin LIGHTLINE
if !has('gui_running')
   set t_Co=256
   endif

" Esconder a barra de status padrao
set noshowmode

" Mostrar barra de status do lightlinevim
set laststatus=2
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'ycm-core/YouCompleteMe'
Plugin 'itchyny/lightline.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'puremourning/vimspector'
"
" Bundle 'mateusbraga/vim-spell-pt-br'

" Track the engine. UtilSnippets
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-Space>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsUsePythonVersion = 3

let g:vimspector_enable_mappings = 'HUMAN'
packadd! vimspector

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Mapeamento de teclas para o vimspector
nnoremap <Leader>dd :call vimspector#Launch()<CR>
nnoremap <Leader>de :call vimspector#Reset()<CR>
nnoremap <Leader>dc :call vimspector#Continue()<CR>

nnoremap <Leader>dt :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dT :call vimspector#ClearBreakpoints()<CR>

nmap <Leader>dk <Plug>VimspectorRestart
nmap <Leader>dh <Plug>VimspectorStepOut
nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStepOver


let g:livepreview_previewer = 'zathura'

colorscheme slate
set cursorline
" highlight CursorLine cterm=NONE ctermbg=8
