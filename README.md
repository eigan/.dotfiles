# .dotfiles
My notes for setting up a fresh installation.

### Installation
```sh
cd ~
mkdir bin .boot .boot/x .boot/zsh .config
git clone git@github.com:eigan/.dotfiles.git
cd .dotfiles

stow <name-of-package>

# For root packages
stow -t / <name-of-package>
```

### "Must have" OS packages
```
stow
rofi
alsa-utils # i3 config (amixer volume)
pulseaudio-alsa # For polybar volume
firefox
phpstorm
terminator
keepassxc

# Fonts
otf-fira-code
otf-font-awesome
adobe-source-code-pro-fonts

# i3
i3
i3lock
```


### Other stuff
Some notes
```
Reload Xresource with xrdb after change
xrdb .Xresource
```


```
# Backup with encryption on the fly
tar --xattrs -czvp ~/bin/ | gpg --encrypt --recipient mail@einargangso.no -o backup-piped.tar.gz.gpg
```

