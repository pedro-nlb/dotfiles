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

pushff() {
    # Push the progress on the Fano fibrations article
    # The parameters are used as commit message
    cd ~/git/sodff;
    git add .;
    git commit -m "$*";
    git push origin master;
    cd;
}

pushbchm1() {
    # Push the progress on BCHM for curves
    # The parameters are used as commit message
    cd ~/git/bchm1;
    git add .;
    git commit gm "$*";
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
