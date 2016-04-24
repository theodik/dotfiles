export LC_ALL='cs_CZ.utf8'
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

if [ -n "$DISPLAY" -a "$TERM" == "xterm" ]; then
  export TERM=xterm-256color
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Auto "cd" when entering just a path
shopt -s autocd

#. /etc/profile.d/autojump.bash

# Source bash colors
if [ -f .bash_colors ]; then
  . .bash_colors
fi

#PS1='\[\e[1;94m\][\u|\D{%H:%M:%S}]\[\e[m\] \[\e[0;94m\]\W\[\e[m\] \[\e[0;32m\]\$\[\e[m\] \[\e[0;37m\]'
PS1='\[\e[1m\e[38;5;45m\][\u|\D{%H:%M:%S}]\[\e[m\] \[\e[38;5;75m\]\W\[\e[m\] \[\e[0;32m\]\$\[\e[m\] \[\e[0;37m\]'

alias ls='ls -h' 
alias l='ls'
alias ll='l -al'
alias ..='cd ..'

set -o emacs
alias m=more
alias cp='cp -ip'
alias mv='mv -i'
alias bye=exit
alias kc='killall -KILL /usr/lib/chromium/chromium'
alias cdr='cd $(git rev-parse --show-cdup)'

alias gst='git status'

export redxml="cd $HOME/Dropbox/projects/redxml-project/"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export EDITOR=vim
# vypnout ctrl-s a ctrl-q aby šlo ukládat ve vimu přes ctrl-s
stty -ixon -ixoff

# start fish shell
#[ -x /usr/bin/fish ] && exec fish
