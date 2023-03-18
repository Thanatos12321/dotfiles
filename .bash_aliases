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
alias imgview='feh'
alias audio='pavucontrol-qt'
alias passwords='vim -M ~/LoL.txt'
alias changepasswords='vim ~/LoL.txt'
alias pictures='cd ~/hdd1/Pictures'
alias video='mpv'
alias wallpapers='cd ~/hdd1/Pictures/Wallpaper'
alias vault='cd ~/Documents/vault'
alias install='sudo pacman -S'
alias samedir='~/Documents/Scripts/samedir.sh'
alias projects='cd ~/Documents/projects'
alias gpuiser='cd ~/Documents/research/gpuiser'
alias nsight='/usr/local/NVIDIA-Nsight-Compute/nv-nsight-cu'
alias untar='tar -xf'
alias portmaster="/opt/safing/portmaster/portmaster-start app --data=/opt/safing/portmaster"
alias music="ncmpcpp"
alias files="thunar"
alias scim="sc-im"
alias completiondir="cd /usr/share/bash-completion/completions"
alias anime="ani-cli"
alias ebook="calibre"

alias suspend='sudo systemctl suspend'
alias imgview='mirage'

alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -alF'
alias lh='ls -lah'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias pgrep='pgrep'

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

