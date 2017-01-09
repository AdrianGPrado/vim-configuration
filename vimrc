
source ~/.vim/vimrc.d/basic.vim
source ~/.vim/vimrc.d/colorscheme.vim
source ~/.vim/vimrc.d/vim-plugins.vim
source ~/.vim/vimrc.d/filetypes.vim
source ~/.vim/vimrc.d/extended.vim

" Add configuration file per-plugin under:
" ~/vim/plugins_conf.d/*.vim
for f in split(glob('~/vim/plugins_conf.d/*.vim'), '\n')
    exe 'source' f
endfor

try
source ~/.vim/vimrcs/my_configs.vim
catch
endtry

