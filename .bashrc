#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# vim terminal mode
set -o vi

# load ~/.bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# case "$TERM" in
#     xterm-color|*-256color) color_promp=yes;;
# esac

export GIT_TEMPLATE_DIR=/usr/share/git-core/templates

color_prompt=yes

if [ "$color_prompt" = yes ]; then
    Black='\[\033[00;30m\]'
    Red='\[\033[00;31m\]'
    Green='\[\033[00;32m\]'
    Brown='\[\033[00;33m\]'
    Blue='\[\033[00;34m\]'
    Purple='\[\033[00;35m\]'
    Cyan='\[\033[00;36m\]'
    LGray='\[\033[00;37m\]'
    DGray='\[\033[01;30m\]'
    LRed='\[\033[01;31m\]'
    LGreen='\[\033[01;32m\]'
    Yellow='\[\033[01;33m\]'
    LBlue='\[\033[01;34m\]'
    LPurple='\[\033[01;35m\]'
    LCyan='\[\033[01;36m\]'
    White='\[\033[01;37m\]'
    Bold='\[\e[1m\]'
    Dim='\[\e[2m\]'
    Italic='\[\e[3m\]'
    Under='\[\e[4m\]'
    Blink='\[\e[5m\]'
    Inv='\[\e[7m\]'
    Hidden='\[\e[8m\]'
    R='\[\e[0m\]'
    PS1='${debian_chroot:+(debian_chroot)}'$Red'['$R$Blue'\u'$LGreen'@'$LRed'\h'$Red']:'$Purple'\w'$Red'$ '$R
else
    PS1='[\u@\h \W]\$ '

fi
