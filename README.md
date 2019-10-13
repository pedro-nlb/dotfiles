# dotfiles

## Disclaimer

I mostly do this for myself. If you are not me, here is a **warning**: I don't have any serious background in informatics and all my knowledge comes from other tutorials, posts and videos on the internet. Therefore my advice is that you look those contents up yourself, since they are written by people with more expertise and deeper knowledge on the topic.

I use this repository to synchronize some files such as *.bashrc* or *.vimrc* between different computers. Some relevant choices:
- [Shell](https://wiki.archlinux.org/index.php/Command-line_shell): [Bash](https://wiki.archlinux.org/index.php/bash).
- [Text editor](https://en.wikipedia.org/wiki/Text_editor): [Vim](https://wiki.archlinux.org/index.php/vim).
- [Display server](https://en.wikipedia.org/wiki/Display_server): [Xorg](https://www.x.org/wiki/).
- [Window manager](https://wiki.archlinux.org/index.php/Window_manager): [i3](https://wiki.archlinux.org/index.php/I3).
- [Terminal emulator](https://en.wikipedia.org/wiki/Terminal_emulator): [rxvt-unicode](https://wiki.archlinux.org/index.php/rxvt-unicode).

If you use different programs, you will need to change the content of the files or even the files themselves. If you are not me, you will also need to replace here and there my username by yours.

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

It is also useful to use an SSH key to connect to GitHub, that way you don't need to enter your username and password everytime you pull/push. See [this guide](https://help.github.com/en/articles/connecting-to-github-with-ssh).


### Initial setup

Open a new terminal window. It should open by default in your home folder. To make sure this is the case, run the command `pwd`. The output should be

```
/home/username
```

To see your dotfiles, run `ls -a`. Create a folder to backup your current dotfiles, e.g. run `mkdir old_dotfiles`. Move the files that you want to replace by files from this repository to this folder. In our example we would run

```
mv .bashrc ~/old_dotfiles/.bashrc
mv .vimrc ~/old_dotfiles/.vimrc
```
Change the current directory to the directory in which you want to clone this repository. For example

```
mkdir git
cd git
```

Fork this repository on GitHub (if you are not me) and then run in the terminal

```
git clone git@github.com:/username/dotfiles.git
```

Finally create the corresponding [symbolic links](https://en.wikipedia.org/wiki/Symbolic_link). In our example we would run

```
ln -s /home/username/git/dotfiles/.bashrc /home/user/.bashrc
ln -s /home/username/git/dotfiles/.vimrc /home/user/.vimrc
```

### Pull changes from GitHub

Open a new terminal window. Change the current directory to the directory of the local repository. In our example, run

```
cd /home/username/git/dotfiles
```

Then pull the changes from GitHub by running the command

```
git pull origin master
```

**Shortcut**: if *.bashrc* is one of the files that is taken from this repository, it is enough to run

```
pull
```

### Push changes to GitHub

Open a new terminal window. Change the current directory to the directory of the local repository. In our example, run

```
cd /home/username/git/dotfiles
```

Then add, commit and push the local changes to GitHub by running the commands

```
git add .
git commit -m "Commit message, e.g. updated .bashrc"
git push origin master
```

**Shortcut**: if *.bashrc* is one of the files that is taken from this repository, it is enough to run

```
push "Commit message, e.g. updated .bashrc"
```
