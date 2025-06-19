#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias cal='cal -3'
alias alpine='qemu-system-x86_64 -enable-kvm -drive file=alpine -m 2048 -cpu host -display gtk'
alias weather='curl -s "wttr.in?format=%l:+%C+%t,+%w+%m&T"; echo'
alias grep='grep --color=auto'
alias ll='ls -lah' 
alias la='ls -A'
alias ..='cd ..'
alias ...='cd ../..'
alias ss="scrot -s -d 2 -q 100 '%Y-%m-%d_%H-%M-%S.png' && mv *.png ~/Pictures/screenshots/ && notify-send 'Screenshot saved' "
PS1='\[\e[32m\]\w\[\e[0m\] \$ '
export EDITOR=vim
export VISUAL=vimbind
set completion-ignore-case on
shopt -s autocd
set -o vi
