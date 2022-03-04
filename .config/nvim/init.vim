" Plug Plugin Loads "{{{

call plug#begin('~/.config/nvim/plugged')

" Install Plugins
Plug 'cocopon/iceberg.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree' |
            \ Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

"}}} end dein Plugin Loads
" SetUp NERDTree {{{

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" }}}
" SetUp Vim AirLine {{{

let g:airline#extensions#tabline#enabled = 1
nmap <C-j> <Plug>AirlineSelectPrevTab
nmap <C-k> <Plug>AirlineSelectNextTab
nmap <silent> q :bd<CR>
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
            \ '0': '0 ',
            \ '1': '1 ',
            \ '2': '2 ',
            \ '3': '3 ',
            \ '4': '4 ',
            \ '5': '5 ',
            \ '6': '6 ',
            \ '7': '7 ',
            \ '8': '8 ',
            \ '9': '9 '
            \}

" Powerline系フォントを利用する
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
" let g:airline_theme = 'tomorrow'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

" }}}
" Colorsheme {{{

if isdirectory(expand("~/.config/nvim/plugged/iceberg.vim"))
    set background=dark
    colorscheme iceberg
endif

" }}}
" Init Config {{{


au FileType vim setlocal foldmethod=marker

" 言語設定
set encoding=utf-8
set fileencodings=utf-8,euc-jp

" システム的におかしい部分を治す
set backspace=indent,eol,start

" バックアップ
set backupdir=~/.config/nvim/backup
set directory=~/.config/nvim/backup

" マウス使用
set mouse=a

" シンタックス
syntax on

" カラースキーマ
set cursorline
highlight Normal ctermbg=none

" 行番号表示
set number

" 補完表示
set wildmenu

" 折り返さない
set nowrap

" インデント設定
set autoindent
set smartindent
set expandtab
set tabstop=4 shiftwidth=4 softtabstop=4

" タブ表示
highlight NonText guifg=lightgray ctermfg=lightgray
highlight SpecialKey guifg=lightgray ctermfg=lightgray
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«

" コマンドをステータスラインに表示
set showcmd

" 大小文字を区別しない検索
set ignorecase

set ambiwidth=single

" }}} end Init Config
