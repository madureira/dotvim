# dotvim

A set of vim configurations.

## Dependencies
* Git

## Install

```sh
$ ./install.sh
```

## Add plugin

```sh
$ git submodule add https://github.com/repo/some-plugin.git bundle/some-plugin
$ source ~/.vimrc
```

## Configuring

Open the ~/.bashrc or ~/.profile and add this:

```sh
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
  export TERM='xterm-256color'
else
  export TERM='xterm-color'
fi
```
