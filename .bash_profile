#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#	exec startx
#fi

export PATH="$HOME/.elan/bin:$PATH"

# Created by `pipx` on 2021-05-16 21:53:07
export PATH="$PATH:/home/pedro/.local/bin"
