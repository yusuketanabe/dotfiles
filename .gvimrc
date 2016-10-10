call plug#begin('~/.vim/plugged')

Plug 'trevordmiller/nova-vim'
Plug 'cocopon/iceberg.vim'

call plug#end()

"ウィンドウの縦幅
set lines=55
"ウィンドウの横幅
set columns=140
"カラースキーマの指定
colorscheme iceberg

set guifont=Cosmic\ Sans\ Neue\ Mono:h14
