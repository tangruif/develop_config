":set tabstop=4
":set softtabstop=4
:set tabstop=8 
:set softtabstop=8 
:set shiftwidth=8 
:set noexpandtab
:set autoindent
:set nu
:set autochdir
:set termencoding=utf-8
:set updatetime=100
:set encoding=utf-8
:set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" ctags config
set tags=./.tags;,.tags


" YCM config
let g:ycm_global_ycm_extra_conf ='/home/tangruifeng/.vim/plugged/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'

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

" YCM can generate code automatically
Plug 'ycm-core/YouCompleteMe'

" git diff
if has('nvim') || has('patch-8.0.902')
	Plug 'mhinz/vim-signify'
else
	Plug 'mhinz/vim-signify', { 'branch': 'legacy'  }
endif


" Initialize plugin system
call plug#end()
