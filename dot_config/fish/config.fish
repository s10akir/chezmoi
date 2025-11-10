set -x LANG en_US.UTF-8
set -x EDITOR nvim

# ghq root directory
set -x GHQ_ROOT $HOME/.ghq

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/s10akir/.lmstudio/bin
# End of LM Studio CLI section


# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
