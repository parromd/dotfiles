" TODO convert to lua config


if has('termguicolors')
	set termguicolors
endif

let mapleader = ","
set tabstop=4
set shiftwidth=4
set background=dark

call plug#begin()
	" Better Syntax Support
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	
	" File explorer + icons
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'kyazdani42/nvim-tree.lua'

	Plug 'jiangmiao/auto-pairs'
	Plug 'feline-nvim/feline.nvim'

	Plug 'lewis6991/gitsigns.nvim'

	"Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

	" Colors
	Plug 'sainnhe/everforest'
	Plug 'sainnhe/gruvbox-material'
	Plug 'morhetz/gruvbox'

	call plug#end()

" KEYBINDS
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

" PLUGIN SETUPS

" nvim-tree
let g:nvim_tree_git_hl = 1
let g:nvim_tree_hightlight_opened_files = 1
let g:nvim_tree_root_folder_modifer = ':~'
let g:nvim_tree_add_trailing = 1
let g:nvim_tree_group_empty = 1
let g:nvim_tree_icon_padding = ' '
let g:nvim_tree_symlink_arrow = ' >> '
let g:nvim_tree_respect_buf_cwd = 1
let g:nvim_tree_create_in_closed_folder = 1
let g:nvim_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 }
let g:nvim_tree_icons = {
    \ 'default': "",
    \ 'symlink': "",
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }

" all fucntions
" NvimTreeOpen
" NvimTreeClose
" NvimTreeFocus
" NvimTreeFindFileToggle
" NvimTreeResize
" NvimTreeCollapse
" NvimTreeCollapseKeepBuffers

" lua configs
lua << EOF

-- gitsigns
require'gitsigns'.setup()

-- bufferline
--require'bufferline'.setup{}


-- NVIM-TREE
require'nvim-tree'.setup()

-- TREE SITTER
require'nvim-treesitter.configs'.setup {
	-- list of parsers
	ensure_installed = { "cpp", "lua", "rust" },

	-- install parsers sychronously
	sync_install = false,

	-- list to ignore when using 'all'
	--ignore_install = { "javascript" },

	highlight = {
		-- 'false' disables the whole extension
		enable = true,

		-- names of parsers, not file type
		--disable = { "cpp" },

		-- dont think I need the extra highlighting from ':syntax'
		--additional_vim_regex_highlighting = false,
	},
}
EOF
"let g:gruvbox_material_better_performance = 1
"let g:gruvbox_material_palette = 'mix'
color gruvbox
