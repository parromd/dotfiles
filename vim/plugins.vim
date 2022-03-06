call plug#begin('~/.config/nvim/autoload/plugged')
	" Better Syntax Support
	Plug 'sheerun/vim-polyglot'
	" js syntax - babel
	Plug 'pangloss/vim-javascript'

	" File Explorer
	Plug 'scrooloose/NERDTree'
	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'
	" Status bar
	Plug 'feline-nvim/feline.nvim'

	" icons
	Plug 'kyazdani42/nvim-web-devicons'

	" GIt signs, more git integration
	Plug 'lewis6991/gitsigns.nvim'
	Plug 'tpope/vim-fugitive'

	" Material color scheme
	Plug 'kaicataldo/material.vim', { 'branch': 'main' }

	" start screen
	Plug 'mhinz/vim-startify'

	" indent line
	Plug 'lukas-reineke/indent-blankline.nvim'

	" rainbow parens
	Plug 'luochen1990/rainbow'

	" Move visual sel
	Plug 'Jorengarenar/vim-MvVis'

	" bufferlline + tabs
	Plug 'akinsho/bufferline.nvim'

	" tree sitter parsing
	Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}

	" telescope
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'

	"
	Plug 'rust-lang/rust.vim'

	call plug#end()

