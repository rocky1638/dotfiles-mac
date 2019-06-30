" VUNDLE SETTINGS/PLUGINS :)

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle
Plugin 'VundleVim/Vundle.vim'

" UI
Plugin 'itchyny/lightline.vim' " the bar at the bottom
Plugin 'tpope/vim-fugitive' " vim-git integration
Plugin 'junegunn/goyo.vim' " for centered zen mode with :Goyo
Plugin 'luochen1990/rainbow' " color brackets
Plugin 'tpope/vim-dispatch' " async dispatch for commands

" Linting
Plugin 'w0rp/ale' " linting

" Themes
Plugin 'rakr/vim-two-firewatch'
Plugin 'arcticicestudio/nord-vim'
Plugin 'morhetz/gruvbox'
Plugin 'shinchu/lightline-gruvbox.vim'
Plugin 'rakr/vim-one'
Plugin 'Rigellute/shades-of-purple.vim'
Plugin 'dylanaraps/wal'
Plugin 'dylanaraps/wal.vim'

" File Finding
Plugin 'francoiscabrol/ranger.vim' " ranger integration
Plugin 'junegunn/fzf' " idek it's useful
Plugin 'junegunn/fzf.vim' " ^^^

" Text Editing Shortcuts
Plugin 'SirVer/ultisnips' " snippets
Plugin 'rocky1638/vim-snippets' " useful snippets
Plugin 'tpope/vim-surround' " for surrounding with ys<motion><delimiter>
                            " or use S<delimiter> in visual mode
Plugin 'scrooloose/nerdcommenter' " for commenting, use <leader>c<space>
Plugin 'mattn/emmet-vim' " emmet
Plugin 'easymotion/vim-easymotion'
Plugin 'cohama/lexima.vim'
Plugin 'takac/vim-hardtime' " timeout on basic motion keys

" Note Taking
Plugin 'godlygeek/tabular' " required for vim-markdown below
Plugin 'plasticboy/vim-markdown' " everything markdown
Plugin 'lervag/wiki.vim'
Plugin 'iamcco/markdown-preview.nvim'

" Others
Plugin 'mtth/scratch.vim' " scratchpad
Plugin 'sheerun/vim-polyglot' " downloads a bunch of language info
Plugin 'neoclide/coc.nvim' " intellisense
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'romainl/vim-devdocs'
Plugin 'yuttie/comfortable-motion.vim' " comfortable scrolling

call vundle#end()
