" dein Plugin Loads "{{{
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.config/nvim/dein')
  call dein#begin('~/.config/nvim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim')
  call dein#load_toml('~/.config/nvim/rc/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/rc/dein_lazy.toml', {'lazy': 1})

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" Clear Cacha
nmap <C-x> :call dein#recache_runtimepath()<CR>

"}}} end dein Plugin Loads
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


