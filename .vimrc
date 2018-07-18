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
" vim airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" suround text with tags
Plug 'tpope/vim-surround'

Plug 'scrooloose/nerdtree'
Plug 'edkolev/tmuxline.vim'
Plug 'ervandew/supertab'
Plug 'pearofducks/ansible-vim'



call plug#end()

let g:airline#extensions#tabline#enabled = 1
nnoremap <F4> :NERDTreeToggle<CR>

" snipmate config
let g:snips_author = 'Øyvind Bergerud'
let g:snips_email = 'oyvind.bergerud@gmail.com'
let g:snips_github = 'https://github.com/obergeru/'

set background=dark 
set t_Co=256
colorscheme elflord


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
highlight BadWhitespace ctermbg=blue guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


" settings for javascript, html css
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2


au BufRead,BufNewFile */playbooks/*.yml set filetype=ansible
map <F7> mzgg=G`z


com! FormatJSON %!python -m json.tool
com! Json2Yaml %!json2yaml
nmap =j :%!python -m json.tool<CR>
