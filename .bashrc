#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ ' (original prompt)
PS1=$'Go study math! \e[31m\]\u2764\e[33m\]\u222bK=2\u03c0\u03c7\e[31m\]\u2764 \e[32m\]\u2714 \e[34m\]\w \e[0m\]\$ '
# TODO: add program that checks if I finished studying today (which i notify with some alias, say) and dont show green tick until I did so.

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

export VISUAL="vim"

# Functions

pushdots() {
	# Push the changes in the local dotfiles to GitHub
	# The parameters are used as commit message
	cd /home/pedro/git/dotfiles;
	git add .;
	git commit -m "$*";
	git push origin master;
	cd;
}

pushthesis() {
	# Push the progress on the thesis
	# The parameters are used as commit message
	cd /home/pedro/git/thesis;
	git add .;
	git commit -m "$*";
	git push origin master;
	cd;
}
