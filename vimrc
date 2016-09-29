" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'
Bundle 'keith/rspec.vim'
Bundle 'vim-ruby/vim-ruby'
call vundle#end()

syntax on

filetype on
filetype indent on
filetype plugin on

set relativenumber

set expandtab
set tabstop=2
set softtabstop=0
set shiftwidth=2 
set autoindent

set colorcolumn=80

highlight ColorColumn ctermbg=Blue

let g:EditorConfig_exec_path = '/usr/bin/editorconfig'

