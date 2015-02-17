if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi

PATH=/usr/local/git/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
 
PS1='[35m\W$(__git_ps1 " [%s]")[0m $ '
# the PS1 above looks like this:
# hackerschool [announcements $%] $ 

# Virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

export CLICOLOR=0

# Added to make sed work on cpython directory
export LC_CTYPE=C
export LANG=C

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

export VISUAL=vim
export EDITOR=$VISUAL
