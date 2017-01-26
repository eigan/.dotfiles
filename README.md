#.dotfiles
My notes for setting up a fresh installation.

### Fonts
[otf-fira-code](https://aur.archlinux.org/pkgbase/otf-fira-code/),
[otf-font-awesome] (https://aur.archlinux.org/packages/otf-font-awesome/)
[adobe-source-code-pro-fonts](https://www.archlinux.org/packages/extra/any/adobe-source-code-pro-fonts/)

### Setup
Install [stow](https://www.gnu.org/software/stow/) from package manager.

Stow requires the `.dotfiles` to be in `~`. Use `stow -t ~` if `.dotfiles` is somewhere else.

```
cd .dotfiles
stow <folder> # Symlinks files if folders exists. Else symlinks entire folders
```

### Requirements
```
stow
rofi
alsa-utils # i3 config (amixer volume)

# i3
i3
i3lock
```


### Other stuff
```
Reload Xresource with xrdb after change
xrdb .Xresource


# Multi screen
xrandr
xrandr --output <connection> --left-of <connection2>
```

