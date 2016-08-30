#.dotfiles
My notes for setting up a fresh installation.

### Fonts
[Fira code](https://github.com/tonsky/FiraCode),
[FontAwesome] (http://fontawesome.io/)
[Source Code Pro](https://github.com/adobe-fonts/source-code-pro)

### Symlinks
Install [stow](https://www.gnu.org/software/stow/) from package manager.
 
Stow requires the `.dotfiles` to be in `~`. Use `stow -t ~` if `.dotfiles` is somewhere else.

```
cd .dotfiles
stow <folder>
```

### Other requirements
```
rofi
```


### Other stuff
```
Reload Xresource with xrdb after change
xrdb .Xresource


# Multi screen
xrandr
xrandr --output <connection> --left-of <connection2>
```

