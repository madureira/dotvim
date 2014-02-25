# dotvim

A set of vim configurations.

## Installing

Dependences:

1. Git

Installing the packages

    $ ./install.sh


## Configuring

Open the ~/.bashrc or ~/.profile and add this:

    if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
    else
        export TERM='xterm-color'
    fi

