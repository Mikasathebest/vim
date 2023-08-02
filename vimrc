" Set font and size
"set guifont=Source Code Pro:12

" Set file type detection and plugins
filetype plugin indent on

" Use syntax highlighting
syntax on

" Set tab size and use spaces for indentation
set tabstop=4
set shiftwidth=4
set expandtab

" Show line numbers
set number

" Enable search highlighting
set hlsearch       
" Make searches case insensitive
set ignorecase  
" Make searches case sensitive if they contain uppercase letters
set smartcase 

" Enable backspace in Vim normal mode, insert mode, and visual mode
set backspace=indent,eol,start

" Enable mouse support
" set mouse=a

" Set color scheme
colorscheme murphy

" Enable incremental search
set incsearch

" Map Ctrl-s to save the current file
nnoremap <C-s> :w<CR>

" Map Ctrl-q to quit Vim
nnoremap <C-q> :q<CR>

" Use auto-indentation for Python files
autocmd FileType python setlocal autoindent

" Use cindent for C files
autocmd FileType c setlocal cindent

" Use smartindent for Makefiles and Makeppfiles
autocmd FileType make setlocal noexpandtab
autocmd FileType makepp setlocal noexpandtab
autocmd FileType make setlocal smartindent
autocmd FileType makepp setlocal smartindent

" Set YAML file type to yaml
autocmd BufNewFile,BufRead *.yaml set filetype=yaml

" Enable Perl mode for Perl files
autocmd FileType perl setlocal filetype=perl

" enables 24-bit color support
" set termguicolors
" highlight clear Underlined
"highlight Underlined cterm=underline gui=underline ctermfg=white guifg=white ctermbg=black guibg=black
set guifont=DejaVu\ Sans\ Mono\ 12

" Set backup and swap file options
" set backup
" set backupdir=~/.vim/backup
" set directory=~/.vim/swap

" Set the maximum textwidth to 79 characters
" set textwidth=79

" Enable spell checking
" set spell spelllang=en

" Enable line wrapping for long lines
" set wrap
" set linebreak
" set showbreak=+++ 

" Set the leader key to comma
let mapleader=","

" Mapping to move up/down by 5 lines
noremap <silent> <C-j> :<C-u>execute 'normal!' (v:count ? v:count : 5) . 'j'<CR>
noremap <silent> <C-k> :<C-u>execute 'normal!' (v:count ? v:count : 5) . 'k'<CR>

autocmd BufNewFile *.py exec ":call SetPythonTitle()"
func SetPythonTitle()
    call setline(1,"\#!/home/utils/Python-3.6.1/bin/python3")
    call append(line("."),  "\# -*- coding: utf-8  -*-")
    call append(line(".")+1,   "\#########################################################################")
    call append(line(".")+2, "\# File Name: ".expand("%"))
    call append(line(".")+3, "\# Author: Harry Deng ")
    call append(line(".")+4, "\# Mail: harryd@nvidia.com")
    call append(line(".")+5, "\# Created Time: ".strftime("%c"))
    call append(line(".")+6, "\# Description:")
    call append(line(".")+7, "\#")
    call append(line(".")+8, "\#########################################################################")

    call append(line(".")+9, "")

    call append(line(".")+10, "\##*********************************************************************##")
    call append(line(".")+11, "\# Description                                                    #")
    call append(line(".")+12, "\##*********************************************************************##")
 
    call append(line(".")+13, "")

    call append(line(".")+14, "\##*********************************************************************##")
    call append(line(".")+15, "\# Main                                                                  #")
    call append(line(".")+16, "\##*********************************************************************##")
    call append(line(".")+17, "if __name__ == '__main__':")
    call append(line(".")+18, "    pass")
    call append(line(".")+19, "")

    autocmd BufNewFile * normal G
endfunc

" set perl common
autocmd BufNewFile *.pl exec ":call SetPerlTitle()"                                                                                                           
func SetPerlTitle()
    call setline(1,"\#!/home/utils/perl-5.22/5.22.0-009/bin/perl")
    call append(line("."),   "")
    call append(line(".")+1, "\#########################################################################")
    call append(line(".")+2, "\# File Name: ".expand("%"))
    call append(line(".")+3, "\# Author: Harry Deng ")
    call append(line(".")+4, "\# Mail: harryd@nvidia.com")
    call append(line(".")+5, "\# Created Time: ".strftime("%c"))
    call append(line(".")+6, "\# Description:")
    call append(line(".")+7, "\#")
    call append(line(".")+8, "\#########################################################################")
    call append(line(".")+9, "use strict;")
    call append(line(".")+10, "use warnings;")
    autocmd BufNewFile * normal G
endfunc                
