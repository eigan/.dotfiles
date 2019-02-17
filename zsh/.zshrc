# If you come from bash you might have to change your $PATH.
export PATH=./bin:$HOME/bin:$HOME/:node_modules/.bin/:vendor/bin:.config/composer/vendor/bin/:/usr/local/bin:/usr/lib/node_modules/.bin:$HOME/.gem/ruby/2.4.0/bin/:/home/einar/.gem/ruby/2.4.0/bin:$HOME/.yarn/bin/:$PATH:

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# Custom: .config/oh-my-zsh/custom/themes/
ZSH_THEME="eigan-mini"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/.config/oh-my-zsh/custom

# oh-my-zsh plugins: ~/.oh-my-zsh/plugins/*)
# Custom plugins:    ~/.config/oh-my-zsh/custom/plugins/
plugins=(you-should-use git)

# Start oh my zsh
if [ -f $ZSH/oh-my-zsh.sh ]; then
    source $ZSH/oh-my-zsh.sh
fi

# Custom variables
if [ -f ~/.config/shell/variables ]; then
    source ~/.config/shell/variables
fi

# Custom aliases
if [ -f ~/.config/shell/aliases ]; then
    source ~/.config/shell/aliases
fi

# Boot scripts for zsh/cli
# Enable by removing the .skip suffix
for i in $HOME/.boot/zsh/*
do
	if [[ $i != *".skip" ]]; then
		source $i
	fi
done
