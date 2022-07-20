syntax enable
if has('termguicolors')
	set termguicolors
endif

" for windows
" let &shell = executable('pwsh') ? 'pwsh' : 'powershell'
" let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
" let &shellredir = '-RedirectStandardOutput %s -NoNewWindow -Wait'
" let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
" set shellquote= shellxquote=

set nu relativenumber
set nowrap
set incsearch
set smarttab
set smartindent
set smartcase
set noswapfile
set nobackup
set noerrorbells
set hidden
set updatetime=500
set cindent
set wildmenu
set mouse=a
set scrolloff=20
set tabstop=4
set softtabstop=4
set shiftwidth=4
set background=dark
set t_Co=256
colorscheme dark-decay
