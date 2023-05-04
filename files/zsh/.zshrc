# ANTIGEN
source $HOME/.antigen.zsh

export NVM_COMPLETION=true
export NVM_LAZY_LOAD=true
export NVM_AUTO_USE=true
antigen bundle agkozak/zsh-z
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

# GENERAL

# Node
eval "$(fnm env --use-on-cd)"

eval "$(direnv hook zsh)"

eval "$(oh-my-posh init zsh)"
