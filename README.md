## Install a python supported vim

For MacOS

    alias python="python3"
    brew install vim
    vim --version | grep python


## Install vim-plug

vim-plug kur -> https://github.com/junegunn/vim-plug

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## Install pynvim

    pip3 install pynvim

## Replace .vimrc

    cp .vimrc ~/.vimrc

## Install Plugins

Open vim and <pre>:PlugInstall</pre>
