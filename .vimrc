" ~/.vimrc

" Set Vim mode (using Vim defaults)
:set nocompatible

" Allow backspacing over everything in INSERT mode
:set backspace=2

" Show cursor position
:set ruler

" Set longer command history (default is 20)
:set history=100

" Interpret modelines
:set modeline

" Viminfo options
:set viminfo='20,<500,h,%

" Always show the tabline with the open tabs
:set showtabline=2

" Please everyone just use UTF-8
:set encoding=utf-8
:set fileencoding=utf-8

" Detect file type, load the associated plugin and indenting rules
:filetype plugin indent on

" Turn on syntax highlighting
:syntax on

" By default, the .md extension is associated with the 'modula2' filetype
" Since my .md files are MarkDown files, associate it with the 'text' filetype
:autocmd BufNewFile,BufRead *.md,*.adoc,*.asciidoc setlocal filetype=text

" Default theme
:colors leo

" Nostalgia (needs the appropriate color plugin in ~/.vim/colors/borland.vim)
:autocmd FileType c,cpp colors borland

" Customize indentation and text wrap preferences for some file types
:autocmd FileType cpp,perl,python,json,java set number cindent nowrap expandtab tabstop=8 softtabstop=4 shiftwidth=4
:autocmd FileType c set number cindent nowrap tabstop=8 softtabstop=4 shiftwidth=4
:autocmd FileType js set cindent nowrap expandtab tabstop=8 softtabstop=2 shiftwidth=2
:autocmd FileType xml,xsd set expandtab tabstop=8 softtabstop=2 shiftwidth=2
:autocmd FileType m set nowrap expandtab tabstop=8 softtabstop=4 shiftwidth=4
:autocmd FileType text,tex,rst set autoindent textwidth=78
:autocmd BufNewFile,BufRead *.txt,*.md,README set formatoptions+=n
:autocmd BufNewFile,BufRead *.yang set number cindent nowrap expandtab tabstop=8 softtabstop=4 shiftwidth=4 syntax=yang

" Represent <TAB> characters with an underline
:autocmd FileType c,cpp syntax match Tab /\t/
:autocmd FileType c,cpp hi Tab gui=underline guifg=blue ctermbg=blue

" The following line is suggested by the vim-LaTex package
:set grepprg=grep\ -nH\ $*

" Keyboard mappings
:map <C-S-n> :tabnew<CR>
":nmap <F2> :mksession! ~/.vim/session/Session.vim<CR>
:nmap <F2> :wa<Bar>exe "mksession! " . v:this_session<CR>:so ~/.vim/session/

