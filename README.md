# Installation
The repo is made with [GNU Stow](https://www.gnu.org/software/stow/) in mind.
Each individual configuration can be applied and symlinked with the following command:
```
stow -t ~/ {{DIR}}
```
Where `{{DIR}}` is the name of one of the directories, e.g. `vim`

Alternatively, everything can be applied at once with the following:

```
ls -d */ | xargs stow -t ~/
```

## Vim config
Uses Vundle for managing plugins

### Installation:
Clone Vundle
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Run `:BundleInstall` in Vim, and you should be good.
