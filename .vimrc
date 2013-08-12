".vimrc

"THIS IS A CONFIGURATION FILE -- IT'S FOR CONFIGURATION AND CONFIGURATION _ONLY_
"If you use this file not for configuration, then you're using it WRONG!
"This is configuration file for configuring things like VIM. It MAY configure
"other things, BUT IT WON'T do anything besides configurating, for it's
"configuration file!

"This file is in public domain.

"If anyone cares, this was written by Rafael Almeida <almeidaraf@gmail.com>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                              "
"                                  settings                                    "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()
call vundle#rc()

Bundle 'cakebaker/scss-syntax.vim'
Bundle 'lunaru/vim-less'

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

set wildignore+=*.class
set wildignore+=.git

let fuzzy_ignore='*.class,*.o,*.jar,*.war,*.pyc,*.hi,*ho,*.aux,*.toc,*.gz,*.bz2,*.zip,*.tar,*.png,*.gif,*.eps'


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
au BufEnter *.coffee     set et   sts=2 sw=2 ts=2
au BufEnter *.erb        set et   sts=2 sw=2 ts=2
au BufEnter *.scss       set et   sts=2 sw=2 ts=2
au BufEnter *.rkt        set et   sts=2 sw=2 ts=2
autocmd BufRead,BufNewFile Gemfile set filetype=Gemfile


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
