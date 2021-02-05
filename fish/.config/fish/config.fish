# Set brew path
set -gx PATH /opt/homebrew/bin $PATH

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
