lua << EOF

-- gitsigns
require'gitsigns'.setup()

-- nvim-tree
require'nvim-tree'.setup()


-- tree sitter
require'nvim-treesitter.configs'.setup {
	--list of parsers
	ensure_installed = { "cpp", "c", "python" },

	-- install parsers synchronously
	sync_install = false,

	-- list to ignore when using 'all'
	--ignore_install = { "javascript" },

	highlight = {
		-- 'false' disables whole extension
		enable = true,

		-- names of parsers, not file type
		-- disable = { "cpp" }

		-- probable dont need the extra highlighting from ':syntax'
		--additional_vim_regex_highlighting = false,
	}
}

require'decay'.setup {
	dark = true,
	nvim_tree = {
		contrast = true, 
	}
}
EOF
