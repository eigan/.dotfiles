# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$PATH:$HOME/:node_modules/.bin/:vendor/bin:$HOME/.config/composer/vendor/bin/:/usr/local/bin:/usr/lib/node_modules/.bin:$HOME/.gem/ruby/2.4.0/bin:$HOME/.yarn/bin/:$HOME/go/bin/

# Path to zsh init script
export ZSH=$HOME/.config/zsh

# See .custom/zsh/themes/
ZSH_THEME="eigan-mini"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Load zsh (complations, keybindings etc)
source $ZSH/main.sh

# Env variables
if [ -f ~/.config/shell/variables ]; then
    source ~/.config/shell/variables
fi

# Aliases
if [ -f ~/.config/shell/aliases ]; then
    source ~/.config/shell/aliases
fi

# Boot scripts for zsh/cli
# Enable by removing the .skip suffix
if [ -d $HOME/.boot/zsh/ ]; then
    for i in $HOME/.boot/zsh/*.sh
    do
        source $i
    done
fi
