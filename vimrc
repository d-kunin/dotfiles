execute pathogen#infect()

colorscheme molokai 
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

set autochdir
set autoread

function StripTrailingWhitespace()
  if !&binary && &filetype != 'diff'
    normal mz
    normal Hmy
    %s/\s\+$//e
    normal 'yz<CR>
    normal `z
  endif
endfunction

augroup configgroup
    autocmd!
    autocmd FileType make setlocal noexpandtab
    autocmd VimEnter * highlight clear SignColumn
"    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
"                \:call <SID>StripTrailingWhitespaces()
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
augroup END

set visualbell 
set t_vb=
