autoload -U colors promptinit && colors

PROMPT="
$fg[blue]%n$reset_color@$fg[blue]%m$reset_color: $fg[green]%~$reset_color
$fg[green]>$reset_color "

alias ll = 'ls -al'
