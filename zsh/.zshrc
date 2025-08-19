# Homebrew path (Apple Silicon)
export PATH="/opt/homebrew/bin:$PATH"

# Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Disable Oh My Zsh theme since we're using Starship
ZSH_THEME=""

# Oh My Zsh configuration
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"

# Useful Oh My Zsh plugins
# Plugin documentation:
# git: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git
# docker: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker
# docker-compose: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker-compose
# terraform: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/terraform
# aws: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/aws
# gcloud: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/gcloud
# golang: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/golang
# python: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/python
# npm: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/npm
# yarn: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/yarn
# z: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/z
# fzf: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/fzf
# direnv: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/direnv
# command-not-found: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/command-not-found
# colored-man-pages: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colored-man-pages
# extract: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/extract
plugins=(
  git
  docker
  docker-compose
  terraform
  aws
  gcloud
  golang
  python
  npm
  yarn
  z
  fzf
  direnv
  command-not-found
  colored-man-pages
  extract
)

source $ZSH/oh-my-zsh.sh

# History configuration
HISTSIZE=50000
SAVEHIST=50000
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY
setopt SHARE_HISTORY

# Environment variables
export LANG=en_US.UTF-8
export EDITOR='vim'
export VISUAL='vim'

# Python (uv)
# UV manages Python versions and packages
# Install Python: uv python install 3.12
# Create venv: uv venv
# Install packages: uv pip install package

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"

# Go
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# Rust
[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# FZF configuration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'

# direnv hook
eval "$(direnv hook zsh)"

# Starship prompt (must be after Oh My Zsh)
eval "$(starship init zsh)"

# Modern CLI tool aliases
alias ls='eza'
alias ll='eza -la --icons'
alias la='eza -a --icons'
alias lt='eza --tree --level=2 --icons'
alias lg='eza -la --git --icons'
alias cat='bat'
alias catp='bat --style=plain'
alias find='fd'
alias grep='rg'
alias ps='procs'
alias top='htop'
alias df='duf'
alias du='dust'

# Navigation aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Git aliases (custom additions to Oh My Zsh git plugin)
# Plugin already provides: ga, gc (with --verbose), gp, gl, gco, gcb, glog
# See all git plugin aliases: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git
alias gs='git status'  # Plugin uses 'gst' for this
alias gpo='git push origin $(git branch --show-current)'  # Similar to plugin's 'ggp'

# Docker aliases
alias d='docker'
alias dc='docker-compose'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias di='docker images'
alias drm='docker rm $(docker ps -aq)'
alias drmi='docker rmi $(docker images -q)'

# Kubernetes aliases
alias k='kubectl'
alias kgp='kubectl get pods'
alias kgs='kubectl get services'
alias kgd='kubectl get deployments'
alias kaf='kubectl apply -f'
alias kdel='kubectl delete'
alias klog='kubectl logs'
alias kexec='kubectl exec -it'

# Terraform aliases
alias tf='terraform'
alias tfi='terraform init'
alias tfp='terraform plan'
alias tfa='terraform apply'
alias tfd='terraform destroy'

# Claude alias
alias claude-yolo="claude --dangerously-skip-permissions"

# Quick edit configs
alias zshrc='code ~/.zshrc'
alias kittyconf='code ~/.config/kitty/kitty.conf'
alias starshipconf='code ~/.config/starship.toml'

# Useful functions
mkcd() {
  mkdir -p "$1" && cd "$1"
}

# Extract any archive
extract() {
  if [ -f $1 ]; then
    case $1 in
      *.tar.bz2)   tar xjf $1     ;;
      *.tar.gz)    tar xzf $1     ;;
      *.bz2)       bunzip2 $1     ;;
      *.rar)       unrar e $1     ;;
      *.gz)        gunzip $1      ;;
      *.tar)       tar xf $1      ;;
      *.tbz2)      tar xjf $1     ;;
      *.tgz)       tar xzf $1     ;;
      *.zip)       unzip $1       ;;
      *.Z)         uncompress $1  ;;
      *.7z)        7z x $1        ;;
      *)           echo "'$1' cannot be extracted" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Load local config if it exists
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

# opencode
export PATH=/Users/christianbarra/.opencode/bin:$PATH
