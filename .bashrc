#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color'
#PS1=$'\[\e]0;\u@\h \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#PS1=$'\[\e[0m\][\[\e[31m\]\u\[\e[33m\]@\h \[\e[34m\]$PWD\[\e[0m\]]\[\e[32m\]\$ '
PS1=$'\[\e[31m\]\u\[\e[0m\]@\[\e[33m\]\h\[\e[0m\]:\[\e[34m\]\W\[\e[32m\]\$ '
#PS1=$'Go study math! \e[31m\]\u2764\e[33m\]\u222bK=2\u03c0\u03c7\e[31m\]\u2764 \e[32m\]\u2714 \e[34m\]\w \e[0m\]\$ ' #(This one is too much, causes some trouble with the input. But why?)

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

export VISUAL="vim"

# Variables

GITHUBUSERNAME=pedro-nlb

# Functions

push() {
	# Push local changes on a repository to GitHub using
	# First argument is the name of the repository
	# If no arguments, then dotfiles will be the default repository
	# Remaining arguments are used as a commit message
	# If at most one argument, "Some updates" will be the default commit message
	if [ $# = 0 ]
	then
		cd "${HOME}/git/dotfiles"
		git add .
		git commit -m "Some updates"
		git push origin master
		cd
	elif [ $# = 1 ]
	then
		cd "${HOME}/git/${1}"
		git add .
		git commit -m "Some updates"
		git push origin master
		cd
	else
		cd "${HOME}/git/${1}"
		git add .
		git commit -m "${*:2}"
		git push origin master
		cd
	fi
}

pull() {
	# Pull changes from GitHub to your local folder
	# First argument is the name of the repository
	# If no arguments, then dotfiles will be the default repository
	if [ $# = 0 ]
	then
		cd "${HOME}/git/dotfiles"
		git pull origin master
		cd
	else
		cd "${HOME}/git/${1}"
		git pull origin master
		cd
	fi
}

new() {
	# Create a new latex document with the corresponding git repository
	# First argument is the type of template (beamer/blurb/notes/script)
	# Second argument is the name of the new document (blank spaces will be replaced by hyphens)
	cd "${HOME}/git"
	if [ "${1}" = "beamer" ] || [ "${1}" = "blurb" ] || [ "${1}" = "notes" ] || [ "${1}" = "script" ]
	then
		mkdir "$(echo "${@}" | tr ' ' '-')"
		cd "$(echo "${@}" | tr ' ' '-')"
		cp "${HOME}/git/latex-templates/${1}.tex" "main.tex"
		touch "main.bib"
		echo "# ${@:2}" >> "README.md"
		echo "" >> "README.md"
		echo "Document created from the ${1} template [here](https://github.com/pedro-nlb/latex-templates)." >> "README.md"
		cp "${HOME}/git/latex-templates/auxiliary/gitignore" ".gitignore"
		git init
		git add .
		git commit -m "First commit"
		hub create -p
		git push origin master
		cd
		read -p "Alias to edit main.tex [press enter if none]: "
		if [ -n "${REPLY}" ]
		then
			echo "alias ${REPLY}=\"cd ~/git/$(echo "${@}" | tr ' ' '-'); vim main.tex\";" >> ".bash_aliases"
		fi
	else
		echo "Please enter as a first argument the type of template to use (beamer/blurb/notes/script) and use the remaining arguments for the name of the document and repository (blank spaces will be replaced by hyphens)."
	fi
	source .bash_aliases;
}

b() {
	# Open some book in the book folder
	# If single author: "first three letters of name"+"last two digits of year"
	# If two or more authors: "initial letters of authors"+"last two digits of year"
	xdg-open 2>/dev/null "${HOME}/refs/books/${1}"* & exit
}

n() {
	# Open some lecture notes in the notes folder
	# If single author: "first three letters of name"+"last two digits of year"
	# If two or more authors: "initial letters of authors"+"last two digits of year"
	xdg-open 2>/dev/null "${HOME}/refs/notes/${1}"* & exit
}

p() {
	# Open some paper in the paper folder
	# If single author: "first three letters of name"+"last two digits of year"
	# If two or more authors: "initial letters of authors"+"last two digits of year"
	xdg-open 2>/dev/null "${HOME}/refs/papers/${1}"* & exit
}

fetchRef() {
	# Tries to find a reference in some big .bib files
	# The expected argument is the reference in format har77
	# If a book reference exists, that one is prioritized
	# In fact, for now it only works with books
	# If no reference exists, "no reference found" error message is sent
	# Assumes main.bib is in the current working directory
	KEYLINE=$(grep ${1,,} $HOME/git/latex-templates/auxiliary/books.bib)
	if [[ "${KEYLINE}" = *"@"* ]]
	then 
		echo "success"
		echo "${KEYLINE}"
		sed -e "/\${KEYLINE}/,/^$/p" "${HOME}/git/latex-templates/auxiliary/books.bib" >> main.bib
	fi
}

PATH=$PATH:/home/pedro/.elan/bin
