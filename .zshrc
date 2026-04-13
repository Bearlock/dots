# Git Autocomplete
 __git_files () { 
    _wanted files expl 'local files' _files     
}
autoload -Uz compinit && compinit

# Setup LS colors
export CLICOLOR=1

# Make nvim the default editor
export EDITOR=/usr/local/bin/nvim

# Node version picker
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

autoload -U +X bashcompinit && bashcompinit

# place this after nvm initialization!
autoload -U add-zsh-hook

load-nvmrc() {
  local nvmrc_path
  nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version
    nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc

# End NVM

# Pyenv goodness
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# Terraform autocomplete 
complete -o nospace -C /usr/local/bin/terraform terraform

# kubectl autocomplete
source <(kubectl completion zsh)

# Hook direnv up
eval "$(direnv hook zsh)"

# Aliasezzz
alias s='kitten ssh'
alias k='kubectl'
alias ls='ls -G'
alias nv='nvim'
alias nvc='nvim ~/.config/nvim/init.lua'
alias icat='kitten icat'
alias gocov='go test --coverprofile=coverage.out && go tool cover -html=coverage.out && rm coverage.out'
alias fact='gum spin --show-output --title "Fetch a fact. . ." -- ~/fetch-fact.sh'
alias awssso='aws sso login --sso-session payitoff'

## Git
alias g='git'
alias gc='git checkout'
alias gb='git checkout -b'
alias gf='git fetch'
alias gpo='git pull origin'
alias gitroot='cd $(git rev-parse --show-toplevel)'
alias gitclean='git branch --merged | grep -v "^\*\\|master|main" | xargs -n 1 git branch -d'

# Functions
function ren () {
  mv $1 "${1%/*}/$2"
}

function newgit () {
  repo=${1:?repo arg required}
  org=${2:-ArrayUS}

  echo "# $1" >> README.md
  git init
  git add README.md
  git commit -m "first commit"
  git branch -M main
  git remote add origin "git@github.com:$org/$1.git"
  git push -u origin main
}

# Go stuff
## export PATH="/opt/homebrew/opt/go@1.21/bin:$PATH"
export PATH="/opt/homebrew/opt/go@1.24/bin:$PATH"
export PATH="$(go env GOPATH)/bin:$PATH"

# Gcloud nonsense
source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

# ASDF path
export PATH="/Users/erick.diaz/.asdf/shims:$PATH"

# PIO elixir flags
export CPATH=/opt/homebrew/include
export LIBRARY_PATH=/opt/homebrew/lib
export CFLAGS="-O2 -g -arch arm64"
export CXXFLAGS="-arch arm64"
export LDFLAGS="-arch arm64"

export PATH="/Users/erick.diaz/.local/bin:$PATH"
