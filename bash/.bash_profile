# .bash_profile

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin
export PATH

if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
else
  # Get the aliases and functions
  [ -f ~/.bashrc ] && . .bashrc
fi
