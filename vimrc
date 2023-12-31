unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

" TODO:
" AUTOCOMPLETE

set nocompatible

" enable syntax and plugins
syntax enable
filetype plugin on

" Relative number except current line with absolute number
" Absolute in INSERT
set number 
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif 
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif 
augroup END

" Number of lines to see above of below the cursor
set scrolloff=8

" Replace tabs by space
set expandtab

" Indentation
set shiftwidth=2
set tabstop=2
set softtabstop=2

" Press jj to go to normal mode
imap jj <Esc>

" FINDING FILES:

" Search down into subfolders
" Provides tab-completion for all file-related task
set path+=**

" Display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy
" - :b lets you autocomplete any open buffer

" TAG JUMPING:

" Create the `tags` file (may need to install ctags first)
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" AUTOCOMPLETE:
" Documented in |ins-completion|
" - ^x^n for JUST this file
" - ^x^f for filenames
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option
" - Use ^n and ^p to go back and forth in the suggestion list

colorscheme sorbet 
