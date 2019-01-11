#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1=$'[\u@\h \W]\$ '
PS1=$'\[\e[0m\][\[\e[31m\]\u\[\e[33m\]@\h \[\e[34m\]\W\[\e[0m\]]\[\e[32m\]\$ '
# PS1=$'Go study math! \e[31m\]\u2764\e[33m\]\u222bK=2\u03c0\u03c7\e[31m\]\u2764 \e[32m\]\u2714 \e[34m\]\w \e[0m\]\$ ' #(This one is too much, causes some trouble with the input. But why?)

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

pushma() {
    # Push the progress on the thesis
    # The parameters are used as commit message
    cd /home/pedro/git/thesis;
    git add .;
    git commit -m "$*";
    git push origin master;
    cd;
}

book() {
    # Open some book in the book folder. Location: ~/books
    # If single author: "first three letters of name"+"last two digits of year". If two or more authors: "initial letters of authors"+"last two digits of year".
    xdg-open /home/pedro/books/$1.*;
}

paper() {
    # Open some paper in the paper folder. Location: ~/papers
    # If single author: "first three letters of name"+"last two digits of year". If two or more authors: "initial letters of authors"+"last two digits of year".
    xdg-open /home/pedro/papers/$1.*;
}
