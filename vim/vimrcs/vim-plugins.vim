" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/pluggins')

" Functions
function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py
  endif
endfunction

" Pluggins definintions

" " https://github.com/klen/python-mode
" Plug 'klen/python-mode', {'for': 'python'}
" 
" " https://github.com/mileszs/ack.vim
" Plug 'mileszs/ack.vim'
" 
" " https://github.com/rking/ag.vim
" Plug 'rking/ag.vim'
" 
" " https://github.com/corntrace/bufexplorer
" Plug 'corntrace/bufexplorer'
" 
" " https://github.com/kien/ctrlp.vim
" Plug 'kien/ctrlp.vim'
" 
" " https://github.com/vim-scripts/mayansmoke
" Plug 'vim-scripts/mayansmoke'
" 
" " https://github.com/scrooloose/nerdtree
" Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" 
" " https://github.com/evanmiller/nginx-vim-syntax
" Plug 'evanmiller/nginx-vim-syntax'
" 
" " https://github.com/amix/open_file_under_cursor.vim
" Plug 'amix/open_file_under_cursor.vim'
" 
" " https://github.com/scrooloose/snipmate-snippets
" Plug 'scrooloose/snipmate-snippets'
" 
" " https://github.com/vim-scripts/tlib
" Plug 'vim-scripts/tlib'
" 
" " https://github.com/MarcWeber/vim-addon-mw-utils
" Plug 'MarcWeber/vim-addon-mw-utils'
" 
" " https://github.com/sophacles/vim-bundle-mako
" Plug 'sophacles/vim-bundle-mako'
" 
" " https://github.com/kchmck/vim-coffee-script
" Plug 'kchmck/vim-coffee-script'
" 
" " https://github.com/altercation/vim-colors-solarized
" Plug 'altercation/vim-colors-solarized'
" 
" " https://github.com/michaeljsmith/vim-indent-object
" Plug 'michaeljsmith/vim-indent-object'
" 
" " https://github.com/groenewege/vim-less
" Plug 'groenewege/vim-less'
" 
" " https://github.com/tpope/vim-markdown
" Plug 'tpope/vim-markdown', { 'for': 'markdown' }
" 
" " https://github.com/therubymug/vim-pyte
" Plug 'therubymug/vim-pyte'
" 
" " https://github.com/garbas/vim-snipmate
" Plug 'garbas/vim-snipmate'
" 
" " https://github.com/honza/vim-snippets
" Plug 'honza/vim-snippets'
" 
" " https://github.com/tpope/vim-surround
" Plug 'tpope/vim-surround'
" 
" " https://github.com/terryma/vim-expand-region
" Plug 'terryma/vim-expand-region'
" 
" " https://github.com/terryma/vim-multiple-cursors
" Plug 'terryma/vim-multiple-cursors'
" 
" " https://github.com/tpope/vim-fugitive
" Plug 'tpope/vim-fugitive'
" 
" " https://github.com/vim-airline/vim-airline
" Plug 'vim-airline/vim-airline'
" 
" " https://github.com/vim-airline/vim-airline-themes
" Plug 'vim-airline/vim-airline-themes'
" 
" " https://github.com/junegunn/goyo.vim
" Plug 'junegunn/goyo.vim'
" "autocmd! User goyo.vim echom 'Goyo is now loaded!'
" 
" " https://github.com/amix/vim-zenroom2
" Plug 'amix/vim-zenroom2'
" 
" " https://github.com/scrooloose/syntastic
" Plug 'scrooloose/syntastic'
" 
" " https://github.com/tpope/vim-repeat
" Plug 'tpope/vim-repeat'
" 
" " https://github.com/tpope/vim-commentary
" Plug 'tpope/vim-commentary'
" 
" " https://github.com/fatih/vim-go
" Plug 'fatih/vim-go'
" 
" " https://github.com/airblade/vim-gitgutter
" Plug 'airblade/vim-gitgutter'
" 
" " https://github.com/morhetz/gruvbox
" Plug 'morhetz/gruvbox'
" 
" " https://github.com/nvie/vim-flake8
" Plug 'nvie/vim-flake8'
" 
" " https://github.com/digitaltoad/vim-pug
" Plug 'digitaltoad/vim-pug'
" 
" " https://github.com/Valloric/YouCompleteMe
" Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

" Initialize plugin system
call plug#end()

