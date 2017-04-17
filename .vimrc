" Plugin
call plug#begin('~/.vim/plugged')

Plug 'cocopon/colorswatch.vim'
Plug 'cocopon/iceberg.vim'
Plug 'cocopon/vaffle.vim'
Plug 'hynek/vim-python-pep8-indent'
Plug 'itchyny/lightline.vim'
Plug 'kana/vim-smartinput'
Plug 'tpope/vim-fugitive'
Plug 'tyru/open-browser.vim'
Plug 'Shougo/unite.vim'

call plug#end()

" Backup
set noswapfile
" StatusLine
set laststatus=2
" 256Color
set t_Co=256
" Encoding 
set encoding=utf-8
scriptencoding utf-8

" ColorScheme
colorscheme iceberg
" RowNumber
set number
" 構文毎に文字色を変化させる
syntax on

" タイトルバーにファイルパス表示
set title
" 検索結果をハイライト
set hlsearch
" 無名レジスタと連携
set clipboard=unnamed

" Indent
set autoindent
set expandtab
set nosmartindent
set shiftround
set shiftwidth=2
set softtabstop=2
set tabstop=2

if has("autocmd")
    filetype plugin on
    filetype indent on
    autocmd FileType css setlocal sw=2 sts=2 ts=2 et
    autocmd FileType html setlocal sw=2 sts=2 ts=2 et
    autocmd FileType python setlocal sw=4 sts=4 ts=4 et
endif

" LightLine
let g:lightline = {
	\ 'colorscheme': 'iceberg',
	\ 'mode_map': {'c': 'NORMAL'},
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
	\ },
	\ 'component_function': {
	\   'modified': 'LightlineModified',
	\   'readonly': 'LightlineReadonly',
	\   'fugitive': 'LightlineFugitive',
	\   'filename': 'LightlineFilename',
	\   'fileformat': 'LightlineFileformat',
	\   'filetype': 'LightlineFiletype',
	\   'fileencoding': 'LightlineFileencoding',
	\   'mode': 'LightlineMode'
	\ }
	\ }

function! LightlineModified()
	return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
	return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? 'x' : ''
endfunction

function! LightlineFilename()
	return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
		\ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
		\  &ft == 'unite' ? unite#get_status_string() :
		\  &ft == 'vimshell' ? vimshell#get_status_string() :
		\ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
		\ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction
 
function! LightlineFugitive()
	if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
		return fugitive#head()
	else
		return ''
	endif
endfunction

function! LightlineFileformat()
	return winwidth(0) > 70 ? &fileformat : ''
endfunction
 
function! LightlineFiletype()
   return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
	return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
	return winwidth(0) > 60 ? lightline#mode() : ''
endfunction
