# Set brew path
set -gx PATH /opt/homebrew/bin $PATH

starship init fish | source

# LibPQ (PostgreSQL)
fish_add_path /opt/homebrew/opt/libpq/bin
set -gx LDFLAGS "-L/opt/homebrew/opt/libpq/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/libpq/include"
set -gx PKG_CONFIG_PATH "/opt/homebrew/opt/libpq/lib/pkgconfig"


# Openssl
fish_add_path /opt/homebrew/opt/openssl@3/bin
set -gx LDFLAGS "-L/opt/homebrew/opt/openssl@3/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/openssl@3/include"
set -gx PKG_CONFIG_PATH "/opt/homebrew/opt/openssl@3/lib/pkgconfig"

# Start tmux
if status is-interactive
and not set -q TMUX
  tmux new-session -A -s main
end

# Poetry
set -gx PATH ~/.poetry/bin $PATH

# PyENV
set -gx PYENV_ROOT $HOME/.pyenv
set -gx fish_user_paths $PYENV_ROOT/bin $fish_user_paths

# pyenv init
if command -v pyenv 1>/dev/null 2>&1
  pyenv init - | source
end

direnv hook fish | source

# Theme configuration
set -g theme_display_ruby no
set -g theme_display_node no
set -g theme_display_virtualenv no

# GOPATH
set -gx GOPATH ~/Projects/go

set -g theme_ford_fonts yes
set -g theme_powerline_fonts no
set -g theme_display_ruby no

# ALIASES
alias kc "kubectl"
alias g "git"
alias chmox "chmod -x"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/homebrew/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# Google Cloud SDK
source (brew --prefix)"/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc"
