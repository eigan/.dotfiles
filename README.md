#.dotfiles
My notes for setting up a fresh installation.

### Installation
```sh
cd ~
mkdir bin
mkdir .boot
mkdir .config
git clone git@github.com:eigan/.dotfiles.git
cd .dotfiles

# stow <stuff>
```

### Fonts
[otf-fira-code](https://aur.archlinux.org/pkgbase/otf-fira-code/),
[otf-font-awesome] (https://aur.archlinux.org/packages/otf-font-awesome/)
[adobe-source-code-pro-fonts](https://www.archlinux.org/packages/extra/any/adobe-source-code-pro-fonts/)

### Packages
```
stow
rofi
alsa-utils # i3 config (amixer volume)

# i3
i3
i3lock


# See INSTALL.txt (generated by pacman)
```


### Other stuff
```
Reload Xresource with xrdb after change
xrdb .Xresource
```

