set nocompatible
filetype off
" be iMproved, required "filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"  let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'jszakmeister/vim-togglecursor'
Plugin 'scrooloose/nerdcommenter'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'hdima/python-syntax'
Plugin 'kshenoy/vim-signature'
Plugin 'ntpeters/vim-better-whitespace'
" Plugin 'neilagabriel/vim-geeknote'
Plugin 'hynek/vim-python-pep8-indent'
" Plugin 'gosukiwi/vim-atom-dark'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'moll/vim-bbye'
" Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'
Plugin 'Sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/Auto-Pairs'
" Plugin 'vim-scripts/vimwiki'
Plugin 'vim-scripts/fcitx.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'sukima/xmledit'
Plugin 'tommcdo/vim-exchange'
Plugin 'godlygeek/tabular'
" Git plugin not hosted on GitHub
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line
  "ddd dddd

set background=light
let g:rehash256 = 1
set encoding=utf-8

set go=
set showcmd
set ruler

let mapleader=","
nnoremap <C-A> ggVGY
nnoremap <F2> :g/^\s*$/d<CR>
set autoread

set nobackup
set autowrite
set cursorline

" Don't redraw while executing macros (good performance config)
set lazyredraw

syntax enable
set noeb
set confirm
set number
set history=1000
set noswapfile
set ignorecase
set hlsearch
set incsearch


set gdefault
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set langmenu=zh_CN.UTF-8
set helplang=cn


set laststatus=2
set cmdheight=2
set viminfo+=!
set iskeyword+=_,$,@,%,#,-
set linespace=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500
set magic
set foldcolumn=1
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk


set wildmenu
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set selection=exclusive
set selectmode=mouse,key
set report=0
set fillchars=vert:\ ,stl:\ ,stlnc:\
set showmatch
set matchtime=2
set scrolloff=3



" CTags的设定
 map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<CR>
 let Tlist_Sort_Type = "name"    " 按照名称排序
 let Tlist_Use_Left_Window = 1  " 在左侧显示窗口
 let Tlist_Compart_Format = 1    " 压缩方式
 let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer
 let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags
 let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树
 let Tlist_Show_One_File=1            "不同时显示多个文件的tag，只显示当前文件的
" "设置tags
set tags=tags
set autochdir

"noremap quick switch navigation
nnoremap <c-j> <c-w>j
nnoremap <c-l> <c-w>l
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
"insert mode map command settings ,manner like habits in term mode "
inoremap <c-l> <Del>
inoremap <c-e> <End>
inoremap <c-b> <Left>
inoremap <c-f> <Right>
inoremap <c-a> <Home>
"some keyshortcuts for some commands
nnoremap <C-t> :TagbarToggle<CR>
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <Leader>d :Bdelete<CR>
nnoremap < :bprevious<CR>
nnoremap > :bnext<CR>
nnoremap <Leader>d :Bdelete<CR>
nnoremap <leader>jd :YcmCompleter GoTo<CR>

"Ycm settings
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_cache_omnifunc=0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

"setting for python syntax
let b:python_version_2 = 1
let python_highlight_builtins = 1
let python_highlight_builtin_objs = 1
let python_highlight_builtin_funcs = 1
let python_highlight_exceptions = 1

"this airline settings "
let g:airline_theme='dark'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_buffers=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#whitespace#enabled = 1



"tagbar settings"
let g:airline#extensions#tagbar#enabled=1
let g:airline#extensions#tagbar#flags = 'f'
let g:tagbar_left=1
""

"syntastic settings
let g:syntastic_python_python_exec = '/usr/bin/python'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1

"Ultisnips.vim settins
let g:UltiSnipsExpandTrigger = "<c-k>"
let g:UltiSnipsJumpForwardTrigger = "<c-k>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-;>" "List possible snippets based on current file
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsSnippetDirectories=["~/.vim/bundle/vim-snippets/UltiSnips"]


"nerdtree settings
let NERDTreeWinSize=22
let NERDTreeWinPos="right"
let NERDTreeAutoDeleteBuffer=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


if filereadable($VIRTUAL_ENV . '/.vimrc')
	source $VIRTUAL_ENV/.vimrc
endif
"

"geeknote settings
autocmd FileType geeknote setlocal nonumber
let g:GeeknoteFormat="markdown"

"nerdcomment settings
let g:NERDSpaceDelims = 1


" easymotion config
nmap s <Plug>(easymotion-s2)
nmap J <Plug>(easymotion-j)
nmap K <Plug>(easymotion-k)
let g:EasyMotion_smartcase=1
let g:EasyMotion_use_smartsign_us = 1
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if !has('nvim')
    set ttymouse=xterm2
    let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
    set clipboard+=unnamedplus
endif
let g:togglecursor_force = 'xterm'
