#.dotfiles
My notes for setting up a fresh installation.

### Fonts
[Fira code](https://github.com/tonsky/FiraCode),
[FontAwesome] (http://fontawesome.io/)

### Symlinks
Install [stow](https://www.gnu.org/software/stow/) from package manager.
 
Stow requires the `.dotfiles` to be in `~`. Use `stow -t ~` if `.dotfiles` is somewhere else.

```
cd .dotfiles
stow <folder>
```
