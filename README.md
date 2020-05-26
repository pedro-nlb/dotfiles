# dotfiles

Use this repository to synchronize some files such as *.bashrc* or *.vimrc* between different computers. Some relevant choices:
- [Shell](https://wiki.archlinux.org/index.php/Command-line_shell): [Bash](https://wiki.archlinux.org/index.php/bash).
- [Text editor](https://en.wikipedia.org/wiki/Text_editor): [Vim](https://wiki.archlinux.org/index.php/vim).
- [Display server](https://en.wikipedia.org/wiki/Display_server): [Xorg](https://www.x.org/wiki/).
- [Window manager](https://wiki.archlinux.org/index.php/Window_manager): [i3](https://wiki.archlinux.org/index.php/I3).
- [Terminal emulator](https://en.wikipedia.org/wiki/Terminal_emulator): [rxvt-unicode](https://wiki.archlinux.org/index.php/rxvt-unicode).

Using different programs requires changing the content of the files or even the files themselves.

## Quick guide

For the purposes of this guide, let's assume we want to synchronize the files *.bashrc* and *.vimrc* in our computer with the ones in this repository.

### Preliminaries

Install and configure git, for example by running the followign commands in the terminal

```
sudo apt-get install git
git config --global user.name "Your Name"
git config --global user.email your@email.com
git config --global core.editor vim
git config --global merge.tool vimdiff
```

It is also useful to use an SSH key to connect to GitHub, that way we don't need to enter username and password everytime we pull/push. See [this guide](https://help.github.com/en/articles/connecting-to-github-with-ssh).


### Initial setup

To start, we open a new terminal window. It should open by default in our home folder. To make sure this is the case, we can run `pwd` on the terminal. The output should be

```
/home/username
```

To see our dotfiles, run `ls -a`. We can create a folder to backup our current dotfiles, e.g. by running `mkdir old_dotfiles`. We move the files that we want to replace by files from this repository to this folder. In our example we would run

```
mv .bashrc ~/old_dotfiles/.bashrc
mv .vimrc ~/old_dotfiles/.vimrc
```
Next we change the current directory to the directory in which we want to clone this repository. For example

```
mkdir git
cd git
```

We fork this repository on GitHub and then run in the terminal

```
git clone git@github.com:/username/dotfiles.git
```

Finally we can create the corresponding [symbolic links](https://en.wikipedia.org/wiki/Symbolic_link). In our example we would run

```
ln -s /home/username/git/dotfiles/.bashrc /home/user/.bashrc
ln -s /home/username/git/dotfiles/.vimrc /home/user/.vimrc
```

### Pull changes from GitHub

We open a new terminal window and change the current directory to the directory of the local repository. In our example, we would run

```
cd /home/username/git/dotfiles
```

Then we pull the changes from GitHub by running the command

```
git pull origin master
```

**Shortcut**: if *.bashrc* is one of the files that is taken from this repository, it is enough to run

```
pull
```

### Push changes to GitHub

We open a new terminal window and change the current directory to the directory of the local repository. In our example, we would run

```
cd /home/username/git/dotfiles
```

Then we add, commit and push the local changes to GitHub by running the commands

```
git add .
git commit -m "Commit message, e.g. updated .bashrc"
git push origin master
```

**Shortcut**: if *.bashrc* is one of the files that is taken from this repository, it is enough to run

```
push "Commit message, e.g. updated .bashrc"
```
