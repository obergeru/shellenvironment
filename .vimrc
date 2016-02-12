" setup of powerline dont duplicate with pluginstall
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2

" setup of plug-install

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'altercation/vim-colors-solarized'

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
