# My emacs settings

## Setup

To grab all the dependencies, either:

    git git@github.com:oscarduignan/.emacs.d.git $HOME/.emacs.d
    cd $HOME/.emacs.d
    git submodule init
    git submodule update

or on git v1.6.5 or later:

    git clone --recursive git@github.com:oscarduignan/.emacs.d.git $HOME/.emacs.d

## Install emacs24

### Windows

Download the latest binary from http://alpha.gnu.org/gnu/emacs/windows/

### Ubuntu

    sudo apt-get -y install python-software-properties
    sudo add-apt-repository ppa:cassou/emacs
    sudo apt-get update
    sudo apt-get -y install emacs-snapshot
