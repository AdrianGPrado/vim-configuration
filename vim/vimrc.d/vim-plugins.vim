" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugins')

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color schemes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" https://github.com/vim-scripts/mayansmoke
Plug 'vim-scripts/mayansmoke'

" https://github.com/flazz/vim-colorschemes
" Includes molokai
Plug 'flazz/vim-colorschemes'

" https://github.com/chriskempson/base16-vim
Plug 'chriskempson/base16-vim'

" Add the color as background for a CSS color
" https://github.com/ap/vim-css-color
Plug 'ap/vim-css-color'

" https://github.com/morhetz/gruvbox
Plug 'morhetz/gruvbox'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Editor
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" https://github.com/ctrlpvim/ctrlp.vim
Plug 'ctrlpvim/ctrlp.vim'

" https://github.com/gabesoft/vim-ags
Plug 'gabesoft/vim-ags'

" https://github.com/corntrace/bufexplorer
Plug 'corntrace/bufexplorer'

" Size file browser
" https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

"" Git integration
" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'

"" Airline bar
" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'

" https://github.com/vim-airline/vim-airline-themes
Plug 'vim-airline/vim-airline-themes'

" https://github.com/amix/open_file_under_cursor.vim
Plug 'amix/open_file_under_cursor.vim'

" Zen mode
" https://github.com/amix/vim-zenroom2
Plug 'amix/vim-zenroom2'

" https://github.com/junegunn/goyo.vim
Plug 'junegunn/goyo.vim'
"autocmd! User goyo.vim echom 'Goyo is now loaded!'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax highlight
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" https://github.com/evanmiller/nginx-vim-syntax
Plug 'evanmiller/nginx-vim-syntax'

" https://github.com/fatih/vim-go
Plug 'fatih/vim-go', {'for': 'go'}


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General code plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Syntax checking
" https://github.com/scrooloose/syntastic
Plug 'scrooloose/syntastic', { 'do': function('BuildYCM'), 'for': ['cpp', 'python'] }

" Matching parentheses
" https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

" Autocompletion
" https://github.com/Valloric/YouCompleteMe
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM'), 'for': ['cpp', 'python'] }

" Python autocompletion that works with YCM
" https://github.com/davidhalter/jedi-vim
Plug 'davidhalter/jedi-vim', {'for': 'python'}

" https://github.com/yggdroot/indentline
Plug 'yggdroot/indentline'
"Plugin 'yggdroot/indentline'

" https://github.com/terryma/vim-expand-region
Plug 'terryma/vim-expand-region'

" https://github.com/terryma/vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'

" https://github.com/xolox/vim-easytags
Plug 'xolox/vim-easytags'

" https://github.com/xolox/vim-misc
Plug 'xolox/vim-misc'

" https://github.com/jakedouglas/exuberant-ctags
Plug 'jakedouglas/exuberant-ctags'

" https://github.com/majutsushi/tagbar
Plug 'majutsushi/tagbar'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" https://github.com/klen/python-mode
Plug 'klen/python-mode', {'for': 'python'}

" Python checker
" https://github.com/nvie/vim-flake8
"Plug 'nvie/vim-flake8', {'for': 'python'}

" https://github.com/kevinw/pyflakes-vim
Plug 'kevinw/pyflakes-vim', {'for': 'python'}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CPP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'rhysd/vim-clang-format', {'for': 'cpp'}
Plug 'octol/vim-cpp-enhanced-highlight', {'for': 'cpp'}


call plug#end()

