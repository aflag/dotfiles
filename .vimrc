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
syntax on

colorscheme default

set background=dark
set backspace=indent,eol,start
set tw=80
set autoindent
set ruler
set showcmd
set number

"set wildignore+=*.class

"let fuzzy_ignore='*.class,*.o,*.jar,*.war,*.pyc,*.hi,*ho,*.aux,*.toc,*.gz,*.bz2,*.zip,*.tar,*.png,*.gif,*.eps'
"map <leader>t :FuzzyFinderTextMate<CR>


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
"au BufEnter *.c,*.h     set noet sts=8 sw=8 filetype=c smartindent
"au BufEnter *.s     set syntax=nasm
"au BufEnter *.cpp,*.hpp set noet sts=8 sw=8            smartindent
"au BufEnter *.ypp       set et   sts=4 sw=4 filetype=yacc ts=4
"au BufEnter *.php       set et   sts=4 sw=4 ts=4
"au BufEnter *.sql       set et   sts=4 sw=4 ts=4
"au BufEnter *.v         set noet sts=8 sw=8
"au BufEnter Makefile    set noet sts=8 sw=8
"au BufEnter *.cpy,*.py  set et   sts=4 sw=4 filetype=python ts=4
"au BufEnter *.rb        set et   sts=4 sw=4 filetype=ruby ts=4
au BufEnter *.java      set et   sts=4 sw=4 filetype=java ts=4 smartindent
"au BufEnter *.jsp       set noet sts=4 sw=4 filetype=jsp ts=4 smartindent
"au BufEnter *.pyx       set et   sts=4 sw=4
"au BufEnter *.cpt,*.pt  set                 filetype=xml
"au BufEnter *.red       set et              filetype=asm
"au BufEnter *.hs,*.lhs  set et   sts=4 sw=4
"au BufEnter *.pro       set et   sts=4 sw=4 filetype=prolog
"au BufEnter *.ic        set et   sts=4 sw=4 filetype=c smartindent
"au BufEnter *.gnuplot   set tw=0 filetype=gnuplot
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
