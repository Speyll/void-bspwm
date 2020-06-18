#!/bin/sh
# .profile - Bourne Shell startup script for login shells

# Personal additional paths in ~/.local/bin:
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | paste -sd ':')"

# Make sure everything is set to exectuable
chmod +x ~/.local/bin/*
chmod +x ~/.local/bin/*/*

# BLOCKSIZE=K;	export BLOCKSIZE
# Setting TERM is normally done through /etc/ttys.
# Do only override if you're sure that you'll never log in via telnet or xterm or a serial line.

# Default programs:
export EDITOR="nvim"
export TERMINAL="st"
export FILE="nnn"
export PAGER="less"

# Rearranging some files
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export NOTMUCH_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/notmuch-config"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/inputrc"
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export WINEPREFIX="${XDG_DATA_HOME:-$HOME/.local/share}/wineprefixes/default"
export KODI_DATA="${XDG_DATA_HOME:-$HOME/.local/share}/kodi"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export ANDROID_SDK_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/android"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export ANSIBLE_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/ansible/ansible.cfg"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history"

# set bashrc each time sh is started for interactive use.
[ -f $HOME/.bashrc ] && . $HOME/.bashrc
#[ -f $HOME/.ashrc ] && . $HOME/.ashrc
