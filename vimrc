" Required:
call plug#begin('~/.vim/plugged')
Plug 'jacekd/vim-iawriter'
Plug 'tommcdo/vim-exchange'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'jmcantrell/vim-virtualenv'
Plug 'saghul/vim-colortoggle'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-expand-region'
Plug 'Lokaltog/vim-easymotion'
Plug 'majutsushi/tagbar'
Plug 'ntpeters/vim-better-whitespace'
Plug 'sjl/gundo.vim'
Plug 'kshenoy/vim-signature'
Plug 'terryma/vim-multiple-cursors'
Plug 'itchyny/lightline.vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/syntastic'
Plug 'amix/vim-zenroom2' "A Vim extension that emulates iA Writer environment when editing Markdown, reStructuredText or text files

Plug 'zenorocha/dracula-theme', { 'rtp':'vim/' }
Plug 'Glench/Vim-Jinja2-Syntax',{'for': ['python']}
Plug 'Yggdroot/indentLine', {'on': 'IndentLinesToggle'}
Plug 'vim-scripts/Auto-Pairs'
Plug 'moll/vim-bbye', {'on': 'Bdelete'}
Plug 'junegunn/goyo.vim', {'on': 'Goyo'}
Plug 'Sirver/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'hdima/python-syntax', {'for': ['python']}
Plug 'Rykka/riv.vim', {'for': ['rst']}
Plug 'rust-lang/rust.vim', {'for': ['rust']}
Plug 'racer-rust/vim-racer', {'for': ['rust']}
Plug 'meiraka/vim-google-cpp-style-indent', {'for': ['cpp']}
Plug 'hynek/vim-python-pep8-indent', {'for': ['python']}
Plug 'Valloric/YouCompleteMe'
autocmd! User YouCompleteMe call youcompleteme#Enable()

call plug#end()

filetype plugin indent on

let g:indentLine_enabled = 0

set encoding=utf-8

set go=
set showcmd
set ruler

let mapleader=","
nnoremap <C-A> ggVGY
nnoremap <F2> :g/^\s*$/d<CR>
set autoread

set background=dark
let g:default_background_type = "dark"
let g:dark_colorscheme = "dracula"
let g:light_colorscheme = "iawriter"
map <silent><F11> :ToggleBg<CR>
set nobackup
set autowrite
set cursorline

" Don't redraw while executing macros (good performance config)
set lazyredraw

set noeb
set confirm
" set number
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
set tw=100
set magic
set foldcolumn=1
set number
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



" CTags settings
 map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<CR>
 let Tlist_Sort_Type = "name"
 let Tlist_Use_Left_Window = 1
 let Tlist_Compart_Format = 1
 let Tlist_Exist_OnlyWindow = 1
 let Tlist_File_Fold_Auto_Close = 0
 let Tlist_Enable_Fold_Column = 0
 let Tlist_Show_One_File=1
set autochdir

"noremap quick go first word and the last
nnoremap gh g^
nnoremap gl g_

"noremap quick switch navigation
nnoremap J <c-w>j
nnoremap L <c-w>l
nnoremap K <c-w>k
nnoremap H <c-w>h
"insert mode map command settings ,manner like habits in term mode "
inoremap <c-l> <Del>
inoremap <c-e> <End>
inoremap <c-b> <Left>
inoremap <c-f> <Right>
inoremap <c-a> <Home>
"some keyshortcuts for some commands

nnoremap <C-t> :TagbarToggle<CR>


"NERD Tree plugin shortcut settings
nnoremap <Leader>nn :NERDTreeToggle<CR>
nnoremap <Leader>nb :NERDTreeFromBookmark<CR>
nnoremap <Leader>nf :NERDTreeFind<CR>


"Goyo.vim plugin shortcut settings
nnoremap <Leader>z :Goyo<cr>
nnoremap < :bprevious<CR>
nnoremap > :bnext<CR>
nnoremap <Leader>d :Bdelete<CR>
nnoremap <leader>jd :YcmCompleter GoTo<CR>



"Ycm settings
" let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_cache_omnifunc=0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
if !empty(glob("~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"))
   let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
endif


"setting for python syntax
let b:python_version_2 = 1
let python_highlight_all = 1

" lightline settings

let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ 'component': {
      \   'readonly': '%{&readonly?"x":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

"tagbar settings
" let g:airline#extensions#tagbar#enabled=1
" let g:airline#extensions#tagbar#flags = 'f'
" let g:tagbar_left=1
""

"syntastic settings
let g:syntastic_python_python_exec = '/usr/bin/python'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"Ultisnips.vim settins
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsListSnippets        = "<c-;>" "List possible snippets based on current file
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsSnippetDirectories=["~/.vim/bundle/vim-snippets/UltiSnips"]


"nerdtree settings
let NERDTreeWinSize=26
let NERDTreeWinPos="left"
let NERDTreeAutoDeleteBuffer=1
autocmd StdinReadPre * let s:std_in=1


if filereadable($VIRTUAL_ENV . '/.vimrc')
	source $VIRTUAL_ENV/.vimrc
endif
"

" easymotion config
nmap s <Plug>(easymotion-s2)
nmap <Leader>J <Plug>(easymotion-j)
nmap <Leader>K <Plug>(easymotion-k)


let g:EasyMotion_smartcase=1
let g:EasyMotion_use_smartsign_us = 1
if has('nvim')
    set clipboard+=unnamedplus
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

" vim-multiple-cursors settings
let g:multi_cursor_start_key='<C-n>'
let g:multi_cursor_start_word_key='g<C-n>'
let g:multi_cursor_quit_key='<C-c>'
nnoremap <C-c> :call multiple_cursors#quit()<CR>
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

let g:tmuxline_powerline_separators = 0


"vim-racer settings
set hidden
let g:racer_cmd = "racer"
let $RUST_SRC_PATH="/home/lyx/.cargo/registry/src/"

"provide root privelage
cmap w! w !sudo tee > /dev/null %
