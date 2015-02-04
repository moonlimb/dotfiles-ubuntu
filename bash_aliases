# bash #
alias sour='. ~/.bashrc'
alias .b='vim ~/.bashrc'

# directory traversing #
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

#l: long format
#t: modification time 
#S: size
#h: file size in human readable format rather than bytes
alias l='ls -lh'
alias la='ls -a'
alias ll='ls -alrth'

######### 
# GREP #
alias gr='grep -rl --color=auto'
alias gl='grep -l'

function grep-str-in-directory() {
  grep -rnw --color=auto . -e $1
}
alias gp=grep-str-in-directory

#####################
# Mercurial Aliases #
alias hs='hg status'
alias ha='hg add'
alias hb='hg branch'
alias hbs='hg branches'
alias hud='hg up default'
alias hd='hg diff'
alias hr='hg rm'
alias hc='hg commit -m'
alias hp='hg push'
alias hpu='hg pull -u'
# not working - ML (6/26/2014)
#alias hd='cdiff -s'
alias hf='cdiff -ls'
alias hu='hg up'
alias hl5='hg log --limit=5'
alias hl15='hg log --limit=15'
alias hi='hg incoming'
alias ho='hg outgoing'

function hh() {
  hg heads ${BRANCH_LABEL}
}

function hg-log() {
  hg log --limit=$1
}

function hg-log-current-branch-only() {
  hg log --limit=$1 --b .
}

alias hl=hg-log
alias hlb=hg-log-current-branch-only

##################
# Django Aliases #
alias rs='python manage.py runserver'
alias db='python manage.py syncdb'
alias dbsh='python manage.py dbshell'
alias sh='python manage.py shell'
alias tt='python manage.py test'
#alias mg = 'python manage.py migrate'
alias sqlclear='python manage.py sqlclear'
alias sqlall='python manage.py sqlall'

# copy & paste
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias c='xclip'
alias v='xclip -o'


