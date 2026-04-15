set -x LANG en_US.UTF-8
set -x EDITOR nvim

# ghq root directory
set -x GHQ_ROOT $HOME/.ghq

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

eval "$(devbox global shellenv)"
eval (/opt/homebrew/bin/brew shellenv)

export PATH="$HOME/.local/bin:$PATH"
