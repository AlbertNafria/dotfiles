# System-wide .bashrc file for interactive bash(1) shells.

PS1="\033[1;32m\][\u@\h \W]\033[1;34m\]$ \[\033[0m\]"
# Make bash check its window size after a process completes
#shopt -s checkwinsize

# Set Vi mode
# set -o vi

#[ -r "/etc/bashrc_$TERM_PROGRAM" ] && . "/etc/bashrc_$TERM_PROGRAM"

color_prompt=yes

# History commands
export HISTCONTROL=ignoredups	# No duplicates recorded
export HISTSIZE=1000			# k records in history
# Lang variable
export LANG="es_ES.UTF-8"


export PATH="$PATH:~/bin/"
export PATH="$PATH:/usr/local/bin/"
export JAVA_HOME=$(/usr/libexec/java_home)

# Editor
export VISUAL=vim
export EDITOR="$VISUAL"
export BROWSER='w3m'
export CLICOLOR=1


#vimwiki
    alias vimwiki='vim -c VimwikiIndex'

#enable colors
	alias ls='ls -G'
	alias grep='grep -G'
#alias
	alias ll='ls -alG'
	alias gst='git status'
    alias v='vim'
	alias shutdown='sudo shutdown -h now'
    alias qutebrowser='open -a qutebrowser'
    alias libreoffice='open -a libreoffice'
    alias transmission='open -a transmission'

#more alias
	alias doc='cd ~/Documents'
	alias dk='cd ~/Desktop'
	alias dw='cd ~/Downloads'
    alias icloud='cd /Users/albert/Library/Mobile\ Documents/com~apple~CloudDocs'
	alias tmat='tmux attach' #abre la sesión de .tmux.conf
    alias tiempo='curl -s wttr.in/barcelona'
    alias mapscii='telnet mapscii.me'
    alias airpods='blueutil --connect "AirPods de Albert"'
    alias beats='blueutil --connect "Beats Flex"'

