fish_add_path --global $HOME/.local/bin

if command -q nvim
  set -x EDITOR nvim
end

if command -q ghq
  set -x GHQ_ROOT $HOME/.ghq
end

set -x LANG en_US.UTF-8
