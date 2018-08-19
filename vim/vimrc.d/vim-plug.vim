"" Vim-Plug
"" Minimalist vim Plugin Manager
"" 
"" Github:
"" https://github.com/junegunn/vim-plug
""
"" Tutorial:
"" https://github.com/junegunn/vim-plug/wiki/tutorial
""
"" With vim-plug, you declare the list of plugins you want to use in your Vim 
"" configuration file. It's ~/.vimrc for ordinary Vim, and ~/.config/nvim/init.
"" vim for Neovim. The list should start with call plug#begin(PLUGIN_DIRECTORY)
"" and end with call plug#end()

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/bundle')

" Declare the list of plugins.


" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py --go-completer --clang-completer
  endif
endfunction
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
