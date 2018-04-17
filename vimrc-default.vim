" .profile
" vim: ts=3 sw=3 sts=3 et si ai:

" (c) 2018, Andres Aquino <inbox@andresaquino.sh>
" This file is licensed under the BSD License version 3 or later.
" See the LICENSE file.

" Notes
" 1- use what ever you want for indenting, but use spaces for aligning
" 2- indent !
" 3- follow the best practices for coding
"
" Links
" http://vimcasts.org/
" https://vim-bootstrap.com/
" https://medium.com/usevim
" https://vim.rtorr.com/
" https://www.cs.oberlin.edu/~kuperman/help/vim/home.html

scriptencoding utf-8

" Be iMproved
if has('vim_starting')
  set nocompatible
endif

let vimplug_exists=expand('~/.vim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" Required:
call plug#begin(expand('~/.vim/plugged'))

"" Plug install packages
"--------------------------------------

"" LightLine
" https://github.com/itchyny/lightline.vim
" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'

"" Mango
" https://github.com/goatslacker/mango.vim
" MANGO theme
Plug 'goatslacker/mango.vim'

"" Dracula
" https://draculatheme.com/vim/
" Dracula theme
"Plug 'dracula/vim', { 'as': 'dracula' }

"" SuperTab
" https://github.com/ervandew/supertab
" Perform all your vim insert mode completions with Tab
Plug 'ervandew/supertab'

"" VIM Polyglot
" https://github.com/ekalinin/Dockerfile.vim
" A solid language pack for Vim.
Plug 'sheerun/vim-polyglot'

"" Ultisnips
" https://github.com/SirVer/ultisnips
" The ultimate snippet solution for Vim.
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"" VIM Commentary
" https://github.com/tpope/vim-commentary
" Comment stuff out. 
" gcc to comment out a line (takes a count)
" gc to comment out the target of a motion (for example, gcap to comment out a paragraph)
" gc in visual mode to comment out the selection
" and gc in operator pending mode to target a comment.
Plug 'tpope/vim-commentary'

"" Bookmarks
" https://github.com/MattesGroeger/vim-bookmarks
" Allows toggling bookmarks per line, also quickfix window gives access to all bookmarks.
Plug 'MattesGroeger/vim-bookmarks'

"" EditorConfig
" https://github.com/editorconfig/editorconfig-vim
" EditorConfig plugin for Vim
Plug 'editorconfig/editorconfig-vim'

"" GIT Integration
" https://github.com/tpope/vim-fugitive
" a Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

"" GIT diff in the gutter (sign column)
" https://github.com/airblade/vim-gitgutter 
" A Vim plugin which shows a git diff in the 'gutter' (sign column). 
" It shows which lines have been added, modified, or removed. You can also preview, stage, and undo individual hunks.
Plug 'airblade/vim-gitgutter'

"" DelimitMate
" https://github.com/Raimondi/delimitMate
" insert mode auto-completion for quotes, parens, brackets, etc.
Plug 'Raimondi/delimitMate'

"" IndentLine
" https://github.com/Yggdroot/indentLine
" Display the indention levels with thin vertical lines
Plug 'Yggdroot/indentLine'

"" Braceless
" https://github.com/tweekmonster/braceless.vim/
" Text objects, folding, and more for Python and other indented languages. 
Plug 'tweekmonster/braceless.vim'

"" CtrlP
" https://github.com/ctrlpvim/ctrlp.vim
" Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder
Plug 'ctrlpvim/ctrlp.vim'

"" gist-vim
" https://github.com/mattn/gist-vim
" vimscript for gist to post, read, update and delete gist of github 
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'

"" vim-autoformat
" https://github.com/chiel92/vim-autoformat
" Provide easy code formatting in Vim by integrating existing code formatters.
Plug 'chiel92/vim-autoformat'

"" Modern matchit and matchparen replacement matchit.vim
" https://github.com/andymass/vim-matchup
" match-up is a drop-in replacement for the vim plugin matchit.vim. 
" match-up aims to enhance all of matchit's features, fix a number of its deficiencies 
" and bugs, and add a few totally new features.
Plug 'andymass/vim-matchup'

"" end
call plug#end()

"" VIM setup
" Encoding
set fileformats=unix,dos,mac
set encoding=utf-8
set termencoding=UTF-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary
set ttyfast
filetype plugin on
filetype indent on

" Fix backspace indent and show tab 
set backspace=indent,eol,start
"set list lcs=tab:\|\ 

" Tabs. May be overriten by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Directories for swp files
set nobackup
set noswapfile

"" behaviour
set autowrite
set autoread
set autoindent
set smartindent
set nowrap

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif

"" Visual Settings
syntax enable
syntax on
set ruler
set number
set cmdheight=1

"" Passing options
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

"" Mango|dracula setup
colorscheme mango
set background=dark
" colorscheme dracula

"" LightLine setup
if !has('gui_running')
  set t_Co=256
endif
set laststatus=2
let g:lightline = {
   \ 'active': {
   \   'left': [ [ 'mode', 'paste' ],
   \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
   \   'right': [ [ 'lineinfo' ],
   \              [ 'percent' ],
   \              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
   \ },
   \ 'component': {
   \   'charvaluehex': '0x%B',
   \ },
   \ 'component_function': {
   \   'gitbranch': 'fugitive#statusline'
   \ },
   \}

"" Ultisnips setup
" Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"" IntentLine setup
"let g:indentLine_color_term = 239
"let g:indentLine_bgcolor_term = 202

"" CtrlP setup
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"" vim-gist setup
" Only :w! updates a gist.
let g:gist_update_on_write = 2

"" -
