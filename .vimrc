set nocompatible

set rtp+=~/.vim/bundle/vundle/
call pathogen#infect()
call vundle#rc()

Bundle 'nvie/vim-flake8'
let g:flake8_max_line_length=1000
autocmd BufWritePost *.py call Flake8()
Bundle 'gmarik/vundle'
Bundle 'vim-ruby/vim-ruby'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'lunaru/vim-less'
Bundle 'wlangstroth/vim-racket'
Bundle 'kchmck/vim-coffee-script'
Bundle 'elzr/vim-json'

syntax on
filetype plugin on     " enables filetype specific plugins

colorscheme default

set background=dark
set backspace=indent,eol,start
set tw=0
set et sts=4 ts=4 sw=4
set autoindent
set ruler
set showcmd
set number

set wildignore+=*.class,.git,*.pyc,*.o,*.war,*.gz,*.bz2,*.eps,*.gif,*.jpg,*.png,*.zip,*.hi,*.aux,*.toc,*.jar,*.svg


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                              "
"                                  commands                                    "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"command Latextemplate 0r ~/templates/latex.template


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                              "
"                                autocommands                                  "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Each language deserves its own tab config (some of filetypes are not what I
"want by default, so I change that as well)
au BufEnter *.cpy,*.py  set et   sts=4 sw=4 filetype=python ts=4
au BufEnter *.rb        set et   sts=2 sw=2 filetype=ruby ts=2
au BufEnter *.java      set et   sts=4 sw=4 filetype=java ts=4 smartindent
au BufEnter *.coffee    set et   sts=2 sw=2 ts=2
au BufEnter *.erb       set et   sts=2 sw=2 ts=2
au BufEnter *.scss      set et   sts=2 sw=2 ts=2
au BufEnter *.rkt       set et   sts=2 sw=2 ts=2
au BufEnter *.rkt       set et   sts=2 sw=2 ts=2
au BufEnter Gemfile     set filetype=Gemfile
au BufEnter *.json      set filetype=json


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                              "
"                                    maps                                      "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <c-y> :NERDTreeToggle<cr>
imap <c-y> <esc>:NERDTreeToggle<cr>

nmap <c-\> :FufCoverageFile<cr>

highlight PmenuSel ctermfg=1
let NERDTreeIgnore = ['\.pyc$']
