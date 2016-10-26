" No compatibility with `vi`
set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" Plugins and Bundles used
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'dracula/vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'nacitar/terminalkeys.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'morhetz/gruvbox'
Bundle 'keith/rspec.vim'
Bundle 'vim-ruby/vim-ruby'
call vundle#end()

" Fix colors for tmux
set term=screen-256color

colorscheme gruvbox
set background=dark

syntax on

filetype on
filetype indent on
filetype plugin on

set number

set expandtab
set tabstop=2
set softtabstop=0
set shiftwidth=2 
set autoindent

set cursorline
set colorcolumn=80

if has('gui_running')
  set guifont=Monaco\ For\ Powerline\ 14
endif

