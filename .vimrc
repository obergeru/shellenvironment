" setup of powerline dont duplicate with pluginstall
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2
set encoding=utf-8

" setup of plug-install

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'altercation/vim-colors-solarized'
Plug 'tmhedberg/SimpylFold'

call plug#end()

set background=dark 
colorscheme solarized

if has('gui_running')
	" do something

else
	" in terminal mode
	set t_Co=16
	let g:solarized_termcolors=16
endif

" Enable folding
set foldmethod=indent
set foldlevel=99
" remap space to fold
nnoremap <space> za
let g:SimpylFold_docstring_preview=1


" Python settings 
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" settings for javascript, html css
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
