" normal development
":set tabstop=4
":set softtabstop=4
":set expandtab

" linux kernel style
:set tabstop=8
:set softtabstop=8
:set shiftwidth=8
:set noexpandtab

:set nu
:set termencoding=utf-8
:set updatetime=100
:set encoding=utf-8
:set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" enable color in xshell
set t_Co=256
let g:airline_powerline_fonts = 1

let g:airline_theme = 'cool'

call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  }
Plug 'tpope/vim-fireplace', { 'for': 'clojure'  }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'  }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim'  }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

Plug 'jiangmiao/auto-pairs'

" vim airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" show git branch
Plug 'tpope/vim-fugitive'

" git diff
if has('nvim') || has('patch-8.0.902')
	Plug 'mhinz/vim-signify'
else
	Plug 'mhinz/vim-signify', { 'branch': 'legacy'  }
endif

" quickly open file
Plug 'kien/ctrlp.vim'

" Initialize plugin system
call plug#end()
