eval "$(starship init zsh)"

alias vim=nvim
alias vi=nvim

export EDITOR="nvim"
export VISUAL="nvim"

export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin

if command -v kubectl &> /dev/null
then
    source <(kubectl completion zsh);
fi

