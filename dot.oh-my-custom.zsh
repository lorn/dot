alias ssh='ssh -AC'

alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'

export PATH=/usr/local/bin:/usr/local/sbin:/Users/lorn/.asdf/shims:/Users/lorn/.scripts/tools/:/Users/lorn/.emacs.d/bin:/opt/homebrew/bin:/opt/homebrew/lib:/opt/homebrew/sbin:$PATH

export GIT_PATH="/Users/lorn/src/"
export POWERLEVEL9K_INSTANT_PROMPT=quiet

export PATH="/Users/lorn/.local/bin:$PATH" 

export DOCKER_DEFAULT_PLATFORM=linux/amd64

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

. "/Users/lorn/.git-env-config"
