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
# SED #
#export LANG=C 
#export LC_CTYPE=C
#This allows for nice arrows to appear for NERDTree
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# default C compiler on Lion is llvm-gcc-4.2 
# code below allows for use of gcc-4.2 (or alternatively clang) 
# Fortran flag '-ff2c' is a dependency 
#export CC=gcc-4.2
#export CXX=g++-4.2
#export FFLAGS=-ff2c
#####################
# Python virtualenv #

export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export VIRTUALENV_USE_DISTRIBUTE=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
[[ -f /usr/local/bin/virtualenvwrapper.sh ]] && . /usr/local/bin/virtualenvwrapper.sh

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
. /usr/share/autojump/autojump.sh

# Invitae files (ubuntu) #
. $HOME/dotfiles/geneticus-fns-ubuntu.env
. $HOME/dotfiles/pulse-fns.env
