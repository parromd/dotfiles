call plug#begin()
	" Quality of life + langs
	Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
	Plug 'kovetskiy/sxhkd-vim'
	Plug 'neoclide/coc.nvim', { 'branch': 'release' }
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'

	" File explorer + icons
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'kyazdani42/nvim-tree.lua', { 'on': ':NvimTreeToggle' }

	Plug 'jiangmiao/auto-pairs'

	" Git
	Plug 'lewis6991/gitsigns.nvim'

	" Misc
	Plug 'ap/vim-css-color'
	Plug 'suan/vim-instant-markdown', { 'rtp': 'after' }
	Plug 'elkowar/yuck.vim'

	" Colors
	Plug 'decaycs/decay.nvim', { 'as': 'decay' }
	Plug 'catppuccin/nvim', { 'as': 'catpuccin' }
	Plug 'morhetz/gruvbox'

call plug#end()
