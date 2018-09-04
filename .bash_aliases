
alias bashrc='vim ~/.bashrc'
alias bashaliases='vim ~/.bash_aliases'
alias tmuxrc='vim ~/.tmux.conf'
alias vimrc='vim ~/.vimrc'
alias i3rc='vim ~/.config/i3/config'
alias rbash='source ~/.bashrc'
alias r='ranger'
alias bp='bpython-curses'
alias net?='ping 8.8.8.8'
alias svim='vim --servername vim'
alias py='python3.7'
alias cls='clear'
alias nf='neofetch'
alias sd='sudo shutdown -h now'
alias suspend='sudo systemctl suspend'
alias imgview='mirage'


alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -alF'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias pgrep='pgrep --color=auto'

# autocomplete and cycle through options
bind "TAB:menu-complete"
bind "set show-all-if-ambiguous on"
bind "set menu-complete-display-prefix on"

mkcd(){
    mkdir "$1"
    cd "$1"
}

setbg(){
    feh --bg-scale "$1" --bg-scale "$2"
}

wttr(){
    curl wttr.in/"${1:-Brisbane}"
}
