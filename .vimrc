set nocompatible              " be iMproved, required
filetype off                  " required

" show line number
set nu!

"tagbar
nmap <F8> :TagbarToggle<CR>

"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

"airline 
let g:airline#extensions#tabline#enabled = 1

autocmd VimEnter * AirlineTheme raven 

"syntax enable
let g:solarized_termcolors=256
"set background=light
set background=dark
colorscheme solarized
if &term =~ '256color'
	  " disable Background Color Erase (BCE) so that color schemes
	  " render properly when inside 256-color tmux and GNU screen.
	  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
	set t_ut=
endif

"syntax o
"set fencs=utf-8,gbk

"mouse
if has('mouse')
	set mouse=a
endif

"  nerdtree setting
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
"let g:nerdtree_tabs_smart_startup_focus = 1
let g:nerdtree_tabs_open_on_console_startup=1                           
let g:nerdtree_tabs_focus_on_files=1 " 设置 打开文件后文件窗口获得焦点  
let g:nerdtree_tabs_smart_startup_focus=1 " 启动时焦点自动调整          
let NERDTreeMinimalUI=1 " 不显示帮助信息  
let NERDTreeShowBookmarks=1

" map NERDTree F2
map <F12> :silent! NERDTreeToggle . <cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'fatih/vim-go'
Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
call vundle#end()

filetype plugin indent on 
