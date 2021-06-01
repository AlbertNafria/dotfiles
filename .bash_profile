# .bash_profile

if [ -f ~/.bashrc ]; then
		. ~/.bashrc
fi

# Incluir ~/bin en variable PATH
PATH=$PATH:~/bin
export PATH
export PATH="/usr/local/sbin:$PATH"
