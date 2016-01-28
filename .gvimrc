" ~/.gvimrc

" Disable right-hand scrollbar
set guioptions-=r

if has("gui_macvim")
	set guifont=Monaco:h12
else
"	set guifont=Monaco\ 10
	set guifont=Screen\ 12
endif

colors anotherdark
set visualbell
set columns=120
set lines=61
