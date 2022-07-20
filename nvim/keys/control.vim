nnoremap <C-s> :w<CR>
noremap <C-n> :NvimTreeToggle<CR>
if maparg('<C-L>', 'n') ==# ''
	nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif
