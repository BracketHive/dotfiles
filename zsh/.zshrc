printf '\33c\e[3J'
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Homebrew aliases
alias bs="brew search"
alias bi="brew install"
alias bu="brew uninstall"

# Tmux aliases
alias fh="tmux a -t FitnessHive"
alias bh="tmux a -t BracketHiveApp"
alias tn="tmux new -s"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
