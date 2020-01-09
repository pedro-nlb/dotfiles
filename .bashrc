#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color'
#PS1=$'[\u@\h \W]\$ '
PS1=$'\[\e[0m\][\[\e[31m\]\u\[\e[33m\]@\h \[\e[34m\]$PWD\[\e[0m\]]\[\e[32m\]\$ '
#PS1=$'Go study math! \e[31m\]\u2764\e[33m\]\u222bK=2\u03c0\u03c7\e[31m\]\u2764 \e[32m\]\u2714 \e[34m\]\w \e[0m\]\$ ' #(This one is too much, causes some trouble with the input. But why?)

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export VISUAL="vim"

# Variables

GITHUBUSERNAME=pedro-nlb
TEXMFHOME=/home/pedro/texmf/

# Functions

push() {
    # Push local changes on a repository to GitHub using
	# If working with submodules, use the recurseSubmodules config option
	# For this it suffices to run git config --global push.recurseSubmodules on-demand once and for all
    # First argument is the name of the repository
	# If no arguments, then dotfiles will be the default repository
    # Remaining arguments are used as a commit message
	# If at most one argument, "Some updates" will be the default commit message
    if [ $# = 0 ]; then
	cd ~/git/dotfiles;
	git add .;
	git commit -m "Some updates";
	git push origin master;
	git submodule foreach git add .;
	git submodule foreach git commit -m "Some updates. Made from repository dotfiles";
	git submodule foreach git push origin master;
	cd;
    elif [ $# = 1 ]; then
	cd ~/git/$1;
	if [ -f main.aux ]; then
	    latexmk -c;
	fi
	git add .;
	git commit -m "Some updates";
	git push origin master;
	git submodule foreach git add .;
	git submodule foreach git commit -m "Some updates. Made from repository $1";
	git submodule foreach git push origin master;
	cd;
    else
	cd ~/git/$1;
	if [ -f main.aux ]; then
	    latexmk -c;
	fi
	git add .;
	git commit -m "${*:2}";
	git push origin master;
	git submodule foreach git add .;
	git submodule foreach git commit -m "${*:2}. Made from repository $1";
	git submodule foreach git push origin master;
	cd;
    fi
}

pull() {
    # Pull changes from GitHub to your local folder
	# If working with submodules, define a git alias to pull and update submodules all at once
	# For this it suffices to run git config --global alias.update '!git pull && git submodule update --init --recursive' once and for all
    # First argument is the name of the repository
	# If no arguments, then dotfiles will be the default repository
    if [ $# = 0 ]; then
	cd ~/git/dotfiles;
	git pull origin master;
	git submodule foreach git pull origin master;
	cd;
    else
	cd ~/git/$1;
	git pull origin master;
	git submodule foreach git pull origin master;
	cd;
    fi
}

new() {
    # Create a new latex document with the corresponding git repository
    # First argument is the name of the template
    # Second argument is the name of the new folder and repository
    cd ~/git;
    mkdir $2;
    cd $2;
    touch README.md;
    cp ~/git/templates/$1/main.tex main.tex;
    git init;
    git add .;
    git commit -m "First commit";
    hub create -p $GITHUBUERNAME/$2;
    git push origin master;
    cd;
    echo "alias $2=\"cd ~/git/$2; vim main.tex\";" >> .bash_aliases;
    source .bash_aliases;
}

b() {
    # Open some book in the book folder
    # If single author: "first three letters of name"+"last two digits of year"
    # If two or more authors: "initial letters of authors"+"last two digits of year"
    okular ~/refs/books/$1* & exit;
}

n() {
    # Open some lelcture notes in the notes folder
    # If single author: "first three letters of name"+"last two digits of year"
    # If two or more authors: "initial letters of authors"+"last two digits of year"
    okular ~/refs/notes/$1* & exit;
}

p() {
    # Open some paper in the paper folder
    # If single author: "first three letters of name"+"last two digits of year"
    # If two or more authors: "initial letters of authors"+"last two digits of year"
    okular ~/refs/papers/$1* & exit;
}
