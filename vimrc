colorscheme badwolf
syntax enable

set tabstop=4
set softtabstop=4
set expandtab

set number
set showcmd
set cursorline

filetype indent on

set wildmode=longest,list,full
set wildmenu
set lazyredraw
set showmatch

set incsearch
set hlsearch

set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=syntax

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" execute pathogen#infect()
" filetype plugin indent on

" let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
" nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" autocmd! GUIEnter * set vb t_vb=
    
set autochdir
