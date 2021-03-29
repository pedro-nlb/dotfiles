# dotfiles

The purpose of this repository is to synchronize some files such as *.bashrc* or *.vimrc* between different devices. Some relevant choices:
- [Shell](https://wiki.archlinux.org/index.php/Command-line_shell): [Bash](https://wiki.archlinux.org/index.php/bash).
- [Text editor](https://en.wikipedia.org/wiki/Text_editor): [Vim](https://wiki.archlinux.org/index.php/vim).
- [Display server](https://en.wikipedia.org/wiki/Display_server): [Xorg](https://www.x.org/wiki/).
- [Window manager](https://wiki.archlinux.org/index.php/Window_manager): [i3](https://wiki.archlinux.org/index.php/I3).
- [Terminal emulator](https://en.wikipedia.org/wiki/Terminal_emulator): [rxvt-unicode](https://wiki.archlinux.org/index.php/rxvt-unicode).

Using different programs requires changing the content of the files or the files themselves.

## Quick guide (fresh start)

*Disclaimer*: the steps below are the ones that I usually follow and they seem to work fine, but there is no guarantee of correctedness.

### Ubuntu Desktop (20.04)

1. Install [Ubuntu Desktop](https://ubuntu.com/download/desktop), one can follow [this tutorial](https://ubuntu.com/tutorials/install-ubuntu-desktop#1-overview) for instance. The options I chose while writing this guide were: minimal installation, download updates while installing and install third-party software.

2. To click *Skip* in the initial window of the desktop setup one can press Alt+s.

3. Install the updates suggested by the Software Updater and restart as suggested.

4. Double check that there isn't anything else left to update:

        $ sudo apt update

  If it says that some number of packages can be upgraded, then:

        $ sudo apt upgrade

5. Install git, vim-gtk3, rxvt-unicode, i3, feh and compton:

        $ sudo apt install git vim-gtk3 rxvt-unicode i3 feh compton
       
  Installing vim-gtk3 instead of just vim allows one to use the system clipboard.


6. Configure git:

        $ git config --global user.name "Your Name"
        $ git config --global user.email your@email.com
        $ git config --global core.editor vim
        $ git config --global merge.tool vimdiff

  It is also useful to use an SSH key to connect to GitHub, that way one doesn't need to enter username and password on every pull or push. See [this guide](https://help.github.com/en/articles/connecting-to-github-with-ssh). Using a passphrase implies again that it has to be introduced on every pull or push, so I personally prefer to skip using it.

7. Now one can finally clone this repository. The first two lines below are just there because I like to keep all the local git repositories inside a single folder:

        $ mkdir git
        $ cd git
        $ git clone git@github.com:pedro-nlb/dotfiles

8. Optionally, one can backup some of the dotfiles that will be replaced. For example:

        $ mkdir .old_dotfiles
        $ cp .bashrc $HOME/old_dotfiles/.bashrc
        
  Then one can safely remove them and add [symbolic links](https://en.wikipedia.org/wiki/Symbolic_link) to the ones from this repository:

        $ rm .bashrc
        $ ln -s /home/username/git/dotfiles/.bashrc /home/username/.bashrc
        $ ln -s /home/username/git/dotfiles/.bash_aliases /home/username/.bash_aliases
        $ ln -s /home/username/git/dotfiles/.bash_profile /home/username/.bash_profile
        $ ln -s /home/username/git/dotfiles/.vimrc /home/username/.vimrc
        $ ln -s /home/username/git/dotfiles/.vim /home/username/.vim
        $ ln -s /home/username/git/dotfiles/.xinitrc /home/username/.xinitrc
        $ ln -s /home/username/git/dotfiles/.Xresources /home/username/.Xresources
        $ ln -s /home/username/git/dotfiles/i3 /home/username/.config/i3
        $ ln -s /home/username/git/dotfiles/i3status /home/username/.config/i3status
        $ ln -s /home/username/git/dotfiles/gtk-3.0 /home/username/.config/gtk-3.0

9. To set rxvt-unicode as the default terminal emulator:

        $ sudo update-alternatives --config x-terminal-emulator
        
10. To set up a wallpaper, save the image that you like as wallpaper.jpg in the Pictures folder. For example:

        $ cd Pictures
        $ wget https://i.redd.it/c3uhsgo1vx541.jpg
        $ mv c3uhsgo1vx541.jpg wallpaper.jpg
        
**Done!** To log into i3, one can select the i3 option in the menu that appears on the bottom-right of the screen while logging in to one's profile.
