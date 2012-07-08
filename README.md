# My emacs settings

## Setup

To grab all the dependencies, either:

    git clone git@github.com:oscarduignan/.emacs.d.git $HOME/.emacs.d
    cd $HOME/.emacs.d
    git submodule init
    git submodule update

or on git v1.6.5 or later:

    git clone --recursive git@github.com:oscarduignan/.emacs.d.git $HOME/.emacs.d

## Fonts

I use Liberation Mono at the moment, you'll get an error if you don't have it installed.

Get it here, or update the call to `(set-default-font)` in `custom/setup-appearance.el`:

http://www.dafont.com/liberation-mono.font

## Install emacs24

### Windows

Download the latest binary from http://alpha.gnu.org/gnu/emacs/windows/

### Ubuntu

    sudo apt-get -y install python-software-properties
    sudo add-apt-repository ppa:cassou/emacs
    sudo apt-get update
    sudo apt-get -y install emacs-snapshot
