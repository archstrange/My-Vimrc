"===============================================================================
" Vim basic settings
" Author: Qijian Zhang
" Date: 2018-09-09
"===============================================================================

" Vim behavior
set belloff=all
filetype indent plugin on
set encoding=utf-8
set linebreak
set autochdir
set breakindent
set scrolloff=5
set sidescroll=12
set browsedir=current
set autoindent
set smartindent
set autowrite
set autoread
set history=5000
let g:tex_conceal="ad"
set backspace=start,indent
runtime ftplugin/man.vim
set foldmethod=marker

set path+=/usr/*/include
set path+=/usr/include/*

" Vim looking
syntax on
set cursorline
set number
"set relativenumber
set background=dark
colors onedark
set ruler
set incsearch
set hlsearch
set showcmd
set cmdheight=1
set showtabline=2
set laststatus=2
"set expandtab
set tabstop=8
set shiftwidth=8
set softtabstop=8
set list
set listchars=tab:\\ ,trail:-
set winheight=5
set winminheight=3

" GUI Vim settings
if has("gui_running")
	" Use context menu
	set mousemodel=popup
	" Hide scroll bar, menus, toolbar etc.
	set guioptions=aeiEGMt

	"source $VIMRUNTIME/delmenu.vim
	"source $VIMRUNTIME/menu.vim
	
	" Set gui font
	if has("gui_gtk3")
		"set guifont=cousine\ nerd\ font\ 12
		set guifont=SauceCodePro\ Nerd\ Font\ 12
		"set guifont=Courier\ 13
		"set guifont=Hack\ nerd\ font\ 12
		"set guifont=Latin\ Modern\ Mono\ 13
		"set guifont=Anonymice\ Nerd\ Font\ 13
		set guifontwide=Source\ Han\ Sans\ 12
		set guiheadroom=0
	endif

	" On Ubuntu, set system language to en
	" if set to zh-cn, line height will be rendered higher
	"set linespace=-4

	"Set gui Window size and position
	winpos 110 70
	set lines=42 columns=171
endif

" Key map
let mapleader=","
nnoremap <Space> <C-w>
nnoremap <Space><Space> <Esc>:bn<CR>
nnoremap <Space>w <Esc>:w<CR>
nnoremap <M-n> <Esc>:tabn<CR>
nnoremap <M-N> <Esc>:tabnew
nnoremap <M-p> <Esc>:tabp<CR>
nnoremap <M-c> <Esc>:tabc<CR>
nnoremap <M-f> <Esc>:tabf<CR>
nnoremap <M-l> <Esc>:tabl<CR>
inoremap <Leader>; <Esc>$a;
