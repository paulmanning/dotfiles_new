export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=/usr/local/bin:$PATH

export ZSH=/Users/paul/.oh-my-zsh
export EDITOR=vim
export VAGRANT_DEFAULT_PROVIDER="virtualbox"
export ZSH_THEME="clean"
source ~/.aliases
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh




###########################################
# NVM Specific
##########################################
  export NVM_DIR="$HOME/.nvm"
    . "$(brew --prefix nvm)/nvm.sh"
    # place this after nvm initialization!
#    autoload -U add-zsh-hook
#    load-nvmrc() {
#      if [[ -f .nvmrc && -r .nvmrc ]]; then
#        nvm use
#      elif [[ $(nvm version) != $(nvm version default)  ]]; then
#        echo "Reverting to nvm default version"
#        nvm use default
#      fi
#    }
#    add-zsh-hook chpwd load-nvmrc
#    load-nvmrc
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#######################################
# Docker Environment
#######################################
# eval $(docker-machine env default)


# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux taskwarrior tmuxinator tab lol github osx catimg git-extras github osxautoenv vagrant brew brew-cask ansible autoenv)

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/Users/paul/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source $ZSH/oh-my-zsh.sh
source ~/.functions
export PATH="/usr/local/sbin:$PATH"
source ~/shell-do-backup.sh
 . `brew --prefix`/etc/profile.d/z.sh

# Hook for desk activation
[ -n "$DESK_ENV" ] && source "$DESK_ENV" || true

 eval $(thefuck --alias)
#eval "$(aliases init --global)"
#
if [ -f /usr/local/share/liquidprompt ]; then
	. /usr/local/share/liquidprompt
fi


