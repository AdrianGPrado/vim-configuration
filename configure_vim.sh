#~/bin/bash


PLUG_VIM_URL=https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim_dir=$(pwd)/vim
vimrc_path=$(pwd)/vimrc

# Create symlinks
ln -sf $vim_dir    $HOME/.vim
ln -sf $vimrc_path $HOME/.vimrc

# Download vim-plug
curl -fLo $vim_dir/autoload/plug.vim --create-dirs $PLUG_VIM_URL

# Install plugins
vim -c PlugInstall
