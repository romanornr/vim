set encoding=utf-8
syntax on
:imap jj <Esc>

:set number relativenumber

" Vim plugin manager
call plug#begin()
	Plug 'bling/vim-airline'
	Plug 'scrooloose/syntastic'
	Plug 'valloric/youcompleteme'
	Plug 'stanangeloff/php.vim'
	Plug 'noahfrederick/vim-laravel'
	Plug 'jwalton512/vim-blade'
	Plug 'fatih/vim-go'
	Plug 'othree/html5.vim'
	Plug 'pangloss/vim-javascript'
	Plug 'klen/python-mode'
	Plug 'rakr/vim-one'
	Plug 'elzr/vim-json'
	Plug 'ntpeters/vim-better-whitespace'
	Plug 'jeffkreeftmeijer/vim-numbertoggle'
call plug#end()

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set background=dark
colorscheme one
let g:airline_theme='one'
