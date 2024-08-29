export PATH=$HOME/.nodebrew/current/bin:$PATH
eval "$(mise activate zsh)"
eval "$(zoxide init zsh)"
eval $(thefuck --alias)
eval "$(fzf --zsh)"


# Alias'
alias k="kubectl"

alias cd="z"
alias cat="bat"
alias la="ls -lsa"
alias c="clear"

alias nvcon="nvim ~/.config/nvim/init.lua"
alias nv="nvim"

alias zel="zellij"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

