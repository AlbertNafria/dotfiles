# .bash_profile

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

color_prompt=yes

# Incluir ~/bin en variable PATH
export PATH="$PATH:~/bin/:/usr/local/bin/:/usr/local/sbin/"
# export JAVA_HOME=$(/usr/libexec/java_home)
# export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"

# History commands
export HISTCONTROL=ignoredups # No duplicates recorded
export HISTSIZE=1000 # k records in history
# Lang variable
export LANG="es_ES.UTF-8"

# Editor
export VISUAL=vim
export EDITOR="$VISUAL"
export BROWSER='w3m'
export CLICOLOR=1

# PS1="\033[1;32m\][\u@\h \W]\033[1;34m\]$ \[\033[0m\]"
# Set Vi mode
# set -o vi

# ZSH_THEME="essembeh"
HISTSIZE=1000
HISTFILESIZE=2000
alias ll='ls -la'
alias cat='batcat'
alias vifm='vifm $PWD $HOME'
alias tiempo='curl -s wttr.in/barcelona'
alias publicip='curl ipinfo.io/ip'

# Colors man pages
#export PAGER="most"
#man(){
#    LESS_TERMCAP_mb=$'\e[1;32m'
#    LESS_TERMCAP_md=$'\e[1;32m'
#    LESS_TERMCAP_me=$'\e[0m'
#    LESS_TERMCAP_se=$'\e[0m'
#    LESS_TERMCAP_so=$'\e[01;33m'
#    LESS_TERMCAP_ue=$'\e[0m'
#    LESS_TERMCAP_us=$'\e[1;4;31m'
#    command man "$@"
#}
export MANPAGER="less -X" #don't clear screen after quitting man page
export LESS_TERMCAP_mb=$'\E[01;31m'
export CLICOLOR=1
