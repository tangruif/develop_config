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
set runtimepath^=~/.vim/plugged/ctrlp.vim

" enable color in xshell
set t_Co=256
let g:airline_powerline_fonts = 1

let g:airline_theme = 'cool'

" ctags config
:set tags=./.tags;,.tags
" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']

" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
   endif

" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']


" YCM config
let g:ycm_global_ycm_extra_conf ='/home/tangruifeng/.vim/plugged/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone


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

" auto gen tags
Plug 'https://github.com/ludovicchabant/vim-gutentags.git'

" YCM can generate code automatically
Plug 'ycm-core/YouCompleteMe'

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
