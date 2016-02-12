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
Plug 'davidhalter/jedi-vim'
" next lines are snipmate:
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
" end snipmate
Plug 'jmcantrell/vim-virtualenv'

" python syntax
Plug 'scrooloose/syntastic'
Plug 'nvie/vim-flake8'




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

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

let python_highlight_all=1
syntax on
"define BadWhitespace before using in a match
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


" settings for javascript, html css
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
