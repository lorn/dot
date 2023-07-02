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

export PATH=/usr/local/bin:/usr/local/sbin:/Users/lorn/.asdf/shims:/Users/lorn/.scripts/tools/:/Users/lorn/.emacs.d/bin:/opt/homebrew/bin:/opt/homebrew/lib:/opt/homebrew/sbin:/usr/local/lib/nodejs/node-v10.15.3-darwin-x64/bin:$PATH

export GIT_PATH="/Users/lorn/Documents/src/"
## ruby 2.5.7

# openssl
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/opt/homebrew/opt/openssl@1.1"

# DynamoDB config
export DYNAMODB_URL="http://localhost:8000"

export POWERLEVEL9K_INSTANT_PROMPT=quiet

# lvim
#
export PATH="/Users/lorn/.local/bin:$PATH" 

# HSTR configuration - add this to ~/.zshrc
alias hh=hstr                    # hh to be alias for hstr
setopt histignorespace           # skip cmds w/ leading space from history
export HSTR_CONFIG=hicolor       # get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)
export HSTR_TIOCSTI=y

