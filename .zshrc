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
complete -o nospace -C /usr/local/bin/terraform terraform

# Hook direnv up
eval "$(direnv hook zsh)"

# Aliasezzz
alias k='kubectl'
alias ls='ls -G'
alias nv='nvim'
alias g='git'
alias gc='git checkout'
alias gb='git checkout -b'
alias gf='git fetch'
alias mup='cd ~/repos/main/docker && docker compose --project-name main up -d && cd -'
alias mown='cd ~/repos/main/docker && docker compose --project-name main down && cd -'
alias neo='nvim ~/notes/work/index.norg'
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
