set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'

" custom plugin
Plugin 'tpope/vim-commentary'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'lilydjwg/colorizer'
Plugin 'itchyny/lightline.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'jiangmiao/auto-pairs'
Plugin 'neoclide/coc.nvim'
Plugin 'mileszs/ack.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-surround'
Plugin 'aperezdc/vim-template'
Plugin 'voldikss/vim-floaterm'
Plugin 'metakirby5/codi.vim'
Plugin 'SirVer/ultisnips'
Plugin 'junegunn/vim-easy-align'
Plugin 'preservim/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'dhruvasagar/vim-table-mode'

" languages
Plugin 'vim-python/python-syntax'
Plugin 'lervag/vimtex'
Plugin 'rust-lang/rust.vim'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'mboughaba/i3config.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'sophacles/vim-processing'
Plugin 'udalov/kotlin-vim'
Plugin 'gridley/serpent2vimsyntax'

" colorscheme
Plugin 'arcticicestudio/nord-vim'
Plugin 'tomasiser/vim-code-dark'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'ayu-theme/ayu-vim'
Plugin 'kaicataldo/material.vim', { 'branch': 'main' }
Plugin 'joshdick/onedark.vim'
Plugin 'ghifarit53/tokyonight-vim'
Plugin 'cocopon/iceberg.vim'
Plugin 'patstockwell/vim-monokai-tasty'
Plugin 'fxn/vim-monochrome'

call vundle#end()            " required
filetype plugin indent on    " required
