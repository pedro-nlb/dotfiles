# dotfiles

## Disclaimer

I mostly do this for myself. If you are not me, here is a **warning**: I don't have any serious background in informatics and all my knowledge comes from other tutorials, posts and videos on the internet. Therefore my advice is that you look those contents up yourself, since they are written by people with more expertise and deeper knowledge on the topic.

I use this repository to synchronize some files such as *.bashrc* or *.vimrc* between different computers. Some relevant choices:
- [Shell](https://wiki.archlinux.org/index.php/Command-line_shell): [Bash](https://wiki.archlinux.org/index.php/bash).
- [Text editor](https://en.wikipedia.org/wiki/Text_editor): [Vim](https://wiki.archlinux.org/index.php/vim).
- [Display server](https://en.wikipedia.org/wiki/Display_server): [Xorg](https://www.x.org/wiki/).
- [Window manager](https://wiki.archlinux.org/index.php/Window_manager): [i3](https://wiki.archlinux.org/index.php/I3).
- [Terminal emulator](https://en.wikipedia.org/wiki/Terminal_emulator): [rxvt-unicode](https://wiki.archlinux.org/index.php/rxvt-unicode).

If you use different programs, you will need to change the content of the files or even the files themselves.

## Quick guide

For the purposes of this guide, let's assume we want to synchronize the files *.bashrc* and *.vimrc* in our computer with the ones in this repository.

### Preliminaries

Install and configure git in your computer. For example, run the followign commands in the terminal

```
sudo apt-get install git
git config --global user.name "Your Name"
git config --global user.email your@email.com
git config --global core.editor vim
git config --global merge.tool vimdiff
```


### Initial setup

Open a new terminal window (Ctrl+Alt+t). It should open by default in your home folder. To make sure this is the case, run the command `pwd`. The output should be

```
/home/yourusername
```

To see your dotfiles, run `ls -a`. Create a folder to backup your current dotfiles, e.g. run `mkdir old_dotfiles`. Move the files that you want to replace by files from this repository to this folder. In our example we would run

```
mv .bashrc ~/old_dotfiles/.bashrc
mv .vimrc ~/old_dotfiles/.vimrc
```

Create a folder to make a local copy of the repository. For example
