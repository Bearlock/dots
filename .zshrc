# Git Autocomplete
 __git_files () { 
    _wanted files expl 'local files' _files     
}
autoload -Uz compinit && compinit

# Setup LS colors
export CLICOLOR=1

# Make nvim the default editor
export EDITOR=/usr/local/bin/nvim
export PATH=$PATH:/Users/ediaz/.composer/vendor/bin

# Node version picker
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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
alias neo='nvim ~/notes/work/index.norg'
alias mup='cd ~/repos/main/docker && docker compose --project-name main up -d && cd -'
alias mown='cd ~/repos/main/docker && docker compose --project-name main down && cd -'

## Git
alias g='git'
alias gc='git checkout'
alias gb='git checkout -b'
alias gf='git fetch'
alias gpo='git pull origin'

# Functions
function ren () {
  mv $1 "${1%/*}/$2"
}

function cdroot() {
  cd $(git rev-parse --show-toplevel)
}

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/ediaz/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
