# dotfiles bare repo

## cloning to new machine

Note: requires ssh to be setup

```
echo 'alias dots="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"' >> $HOME/.zshrc
```
```
echo 'export ZDOTDIR=$HOME/.config/zsh >> $HOME/.zshrc'
```
```
source ~/.zshrc
```
```
git clone --bare  git@github.com:zachatttack/.dotfiles.git $HOME/.dotfiles.git
```
```
dots checkout
```
```
dots config --local status.showUntrackedFiles no
```
```
ln -sf $HOME/.config/zsh/.zshrc $HOME/.zshrc
```
