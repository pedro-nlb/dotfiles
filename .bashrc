#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1=$'[\u@\h \W]\$ '
PS1=$'\[\e[0m\][\[\e[31m\]\u\[\e[33m\]@\h \[\e[34m\]$PWD\[\e[0m\]]\[\e[32m\]\$ '
#PS1=$'Go study math! \e[31m\]\u2764\e[33m\]\u222bK=2\u03c0\u03c7\e[31m\]\u2764 \e[32m\]\u2714 \e[34m\]\w \e[0m\]\$ ' #(This one is too much, causes some trouble with the input. But why?)

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export VISUAL="vim"

# Functions

pushdots() {
    # Push the changes in the local dotfiles to GitHub
    # The parameters are used as commit message
    cd ~/git/dotfiles;
    git add .;
    git commit -m "$*";
    git push origin master;
    cd;
}

pushtemplates() {
    # Push the changes on templates
    # The parameters are used as commit message
    cd ~/git/templates;
    git add .;
    git commit -m "$*";
    git push origin master;
    cd;
}

new() {
    # Create a new latex document with the corresponding git repository
    # First parameter for the document class
    # Second parameter for the name of the folder and the repository
    cd ~/git;
    mkdir $2;
    cd $2;
    touch README.md;
    cp ~/git/templates/$1/main.tex main.tex;
    ln -s ~/git/templates/refs.bib refs.bib;
    git init;
    git add .;
    git commit -m "first commit";
    hub create -p pedro-nlb/$2;
    git remote set-url origin https://github.com/pedro-nlb/$2.git;
    git remote add upstream https://github.com/pedro-nlb/$2.git;
    git push origin master;
    cd;
    echo "alias pull$2=\"cd ~/git/$2; git pull upstream master; cd\";" >> .bash_aliases;
    echo "alias $2=\"cd ~/git/$2; vim main.tex\";"
    echo "push$2() {
	# Push the progress on $2
	# The parameters are used as commit message
	cd ~/git/$2;
	git add.;
	git commit -m \"\$*\";
	git push origin master;
	cd;
    }
    " >> .bashrc;
    pushdots Added new $1: $2;
}

pushldiff() {
    # Push the progress on the log differential notes
    # The parameters are used as commit message
    cd ~/git/ldiff;
    git add .;
    git commit -m "$*";
    git push origin master;
    cd;
}

pushgd() {
    # Push the progress on the Grothendieck Duality seminar
    # The parameters are used as commit message
    cd ~/git/gd;
    git add .;
    git commit -m "$*";
    git push origin master;
    cd;
}

pushff() {
    # Push the progress on the Fano fibrations article
    # The parameters are used as commit message
    cd ~/git/sodff;
    git add .;
    git commit -m "$*";
    git push origin master;
    cd;
}

book() {
    # Open some book in the book folder. Location: ~/books
    # If single author: "first three letters of name"+"last two digits of year". If two or more authors: "initial letters of authors"+"last two digits of year".
    okular ~/refs/books/$1* & exit;
}

notes() {
    # Open some lelcture notes in the notes folder. Location: ~/notes
    # If single author: "first three letters of name"+"last two digits of year". If two or more authors: "initial letters of authors"+"last two digits of year".
    okular ~/refs/notes/$1* & exit;
}

paper() {
    # Open some paper in the paper folder. Location: ~/papers
    # If single author: "first three letters of name"+"last two digits of year". If two or more authors: "initial letters of authors"+"last two digits of year".
    okular ~/refs/papers/$1* & exit;
}


pushattempt1() {
	# Push the progress on attempt1
	# The parameters are used as commit message
	cd ~/git/attempt1;
	git add.;
	git commit -m "$*";
	git push origin master;
	cd;
    }
    
