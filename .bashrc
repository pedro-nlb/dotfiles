#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

export VISUAL="vim"

# Functions

pushdots() {
	# Push the changes in the local dotfiles to GitHub
	# The parameter $1 is used as commit message
	cd /home/pedro/git/dotfiles;
	git add .;
	git commit -m $1;
	git push origin master;
}
