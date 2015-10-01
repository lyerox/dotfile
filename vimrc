" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
" NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'endel/vim-github-colorscheme'
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'tommcdo/vim-exchange'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'rdnetto/YCM-Generator'
NeoBundle 'jszakmeister/vim-togglecursor'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'junegunn/vim-easy-align'
" NeoBundle 'Shougo/unite.vim'
" NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'kshenoy/vim-signature'
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle 'jmcantrell/vim-virtualenv'
NeoBundle 'moll/vim-bbye'
NeoBundle 'bling/vim-airline'
NeoBundle 'Sirver/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'vim-scripts/Auto-Pairs'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'
NeoBundleLazy 'hdima/python-syntax', {'autoload':{'filetype':['python']}}
NeoBundleLazy 'Rykka/riv.vim', {'autoload':{'filetype':['rst']}}

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


set encoding=utf-8

set go=
set showcmd
set ruler

let mapleader=","
nnoremap <C-A> ggVGY
nnoremap <F2> :g/^\s*$/d<CR>
set autoread


syntax enable
if has('gui_running')
    set background=light
else
    set background=light
endif

" let g:solarized_termcolors=256
" let g:solarized_contrast="high"
" let g:solarized_degrade=1
colorscheme github

set nobackup
set autowrite
set cursorline

" Don't redraw while executing macros (good performance config)
set lazyredraw

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
set autochdir
"noremap quick go first word and the last
nnoremap gh g^
nnoremap gl g_

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
" nnoremap <Leader>nt :NERDTreeToggle<CR>
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

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1

"Ultisnips.vim settins
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
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


"nerdcomment settings
let g:NERDSpaceDelims = 1
let python_highlight_all = 1


" easymotion config
nmap s <Plug>(easymotion-s2)
nmap J <Plug>(easymotion-j)
nmap K <Plug>(easymotion-k)
" set clipboard+=unnamed
let g:EasyMotion_smartcase=1
let g:EasyMotion_use_smartsign_us = 1
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if has('nvim')
    " set clipboard+=unnamedplus
    let NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"vim-togglecursor settings
let g:ycm_global_ycm_extra_conf = '~/.ycm.extra_conf.py'
