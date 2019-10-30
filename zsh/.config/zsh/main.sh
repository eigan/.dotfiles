# Set ZSH_CACHE_DIR to the path where cache files should be created
# or else we will use the default cache/
ZSH_CACHE_DIR="$ZSH/cache"

# add a function path
fpath=($ZSH/completions $fpath)

# Load all stock functions (from $fpath files) called below.
autoload -U compaudit compinit

# Load libary files
for config_file ($ZSH/lib/*.zsh); do
  source $config_file
done

# Add all defined plugins to fpath. This must be done
# before running compinit.
fpath=($ZSH/plugins/you-should-use $fpath)
fpath=($ZSH/plugins/git $fpath)

# Figure out the SHORT hostname
SHORT_HOST=${HOST/.*/}

# Save the location of the current completion dump file.
ZSH_COMPDUMP="${ZDOTDIR:-${HOME}}/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"
compinit -i -d "${ZSH_COMPDUMP}"

source $ZSH/plugins/you-should-use/you-should-use.plugin.zsh
source $ZSH/plugins/git/git.plugin.zsh
source $ZSH/themes/$ZSH_THEME.zsh-theme
