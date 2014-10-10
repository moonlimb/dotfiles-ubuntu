# PATHs #
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/python:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/usr/bin:$PATH

# no java on gauss yet 6/18/2014 #
#export JAVA_HOME=$(/usr/libexec/java_home)
#export PATH=$JAVA_HOME/bin:$PATH

# Bash History #
export HISTTIMEFORMAT="%F %T "
# Enable history appending instead of overwriting.
shopt -s histappend

# Terminal Prompt #

# Unicode Mapping
# star '\u2605'
# moon '\u263e'
# snow '\u2744'
# right-arrow '\u279c'
# user  \u
# middle-dot '\u2219'
# moon (Chinese) \u7D0B
# limb (Chinese) \u6797
# lambda \u03bb

export PS1=$'\[\e[00;34m\] \u6797 (\h \u2219 \W) \u279c \[\e[0m\] '


[[ -f ~/dotfiles/bash_ssh ]] && source ~/dotfiles/bash_ssh

#####################
# Python virtualenv #

export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export VIRTUALENV_USE_DISTRIBUTE=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
[[ -f /usr/local/bin/virtualenvwrapper.sh ]] && . /usr/local/bin/virtualenvwrapper.sh

# Bash configs #
. $HOME/dotfiles/bash_aliases

# Bash Completion#
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
# . ~/dotfiles/mercurial/bash_completion
fi

# Invitae files (ubuntu) #
#. $HOME/dotfiles/geneticus-fns-ubuntu.env
#. $HOME/dotfiles/pulse-fns.env
. $HOME/dotfiles/crop-fns.env

# node_modules (local) #
export PATH=./node_modules/.bin:$PATH

# Autojump #
#. /usr/share/autojump/autojump.sh

# Terminal History #
export HISTCONTROL=ignoredups:erasedups # avoid duplicates
shopt -s histappend                     # append history entires
export HISTSIZE=100000                  # big history
export HISTFILESIZE=100000              # big history

# save and reload history after each command
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# mercurial & git bash completion #
. ~/.hg/hg-completion.bash
. ~/.git/git-completion.bash
