# Powerlevel10k Instant Prompt Configuration
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ZSH configuration
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User configuration
source "$HOME/.cargo/env"
source "$HOME/.deno/env"


# Environment Variables
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# PATH Configurations
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin" 
export PATH="$PATH:$HOME/.go/bin"
export PATH="$PATH:$HOME/.dotnet"
export PATH="$PATH:$HOME/.foundry/bin"
export PATH="$PATH:$(npm config get prefix)/bin"

eval "$(zoxide init zsh)"

# Alias Definitions
alias cd="z"
alias ls="eza"
alias la="eza -a"
alias ll="eza -l"
alias cat="batcat"

alias zshconfig="cd ~/.dotfiles/zsh/ && nvim .zshrc"
alias tmuxconfig="cd ~/.dotfiles/tmux/ && nvim .tmux.conf"
alias nvimconfig="cd ~/.dotfiles/nvim/.config/nvim/ && neovim . --fork"
alias emacsconfig="cd ~/.dotfiles/emacs/.config/emacs/ && emacsclient -cnqu -a 'emacs' ." 

alias dotfiles="code ~/.dotfiles"
alias playground="cd ~/Projects/Playground/ && neovim . --fork"
alias study="cd ~/Notes/Study/ && emacsclient -cnqu -a 'emacs' ."
alias learn="playground && study && exit"

alias refresh="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y"

# Keep at the end of ~/.zshrc
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
. "/home/simon/.deno/env"
