" General setting
se nu
se ai ts=4 sts=4 sw=4 et
se ignorecase smartcase hlsearch
se cursorline

" If with mouse detection
set mousemodel=extend

" Invoking pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" Make solarized syntax hilighting
se t_Co=16
se bg=dark
colo solarized

" Set python virtual path
if has("python") && !empty($VIRTUAL_ENV)
    python << EOF
import os
import sys
import vim
a = os.environ['VIRTUAL_ENV'] + '/bin/activate_this.py'
execfile(a, dict(__file__ = a))
sys.path.append('/root/mysite/')
sys.path.append('/root/premade_env/lib/python2.7/site-packages/')
if 'PYTHONPATH' not in os.environ:
    os.environ['PYTHONPATH'] = ''
    os.environ['PYTHONPATH'] += ":"+os.getcwd()
    os.environ['PYTHONPATH'] += ":".join(sys.path)
EOF
exe ":source ~/pysmell-0.7.3/pysmell.vim"
endif

" Set up Omni completion
set omnifunc=syntaxcomplete#Complete
"autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python set omnifunc=pysmell#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set syntax=htmldjango
