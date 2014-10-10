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
#PS1=$'\u2234\u2192\u263f\u2605'

#####################
# SED #
#export LANG=C
# Terminal Colors #
PS1='\e[0;34m\u@\h\e[1;37m\e[0m [\W]:: '
#PS1='[\e[1;34m\u@\h|\e[0m\W\em] '
#PS1='\e[34;0m\u@\h: \e[33m\W\e[0m\$ '
# Bash Aliases # 


if [ -f ~/dotfiles/.bash_aliases ]; then
    . ~/dotfiles/.bash_aliases
fi

[[ -f ~/dotfiles/.bash_ssh ]] && source ~/dotfiles/.bash_ssh

#####################
# Python virtualenv #

#export WORKON_HOME=$HOME/.virtualenvs
#export PIP_VIRTUALENV_BASE=$WORKON_HOME
#export VIRTUALENV_USE_DISTRIBUTE=true
#export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
#[[ -f /usr/local/bin/virtualenvwrapper.sh ]] && . /usr/local/bin/virtualenvwrapper.sh

################
# mongodb #
#alias mongo=./usr/bin/mongo
########
# RUBY #
########

## octopress #
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#
#export PATH="$PATH:$HOME/.rbenv/bin"
#eval "$(rbenv init -)"
#
#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Make fish default shell #
#exec fish

# Autojump #
# . /usr/share/autojump/autojump.sh

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
#. /usr/share/autojump/autojump.sh

# Invitae files (ubuntu) #
. $HOME/dotfiles/crop-fns.env
