if test -x /opt/homebrew/bin/brew
  /opt/homebrew/bin/brew shellenv | source
else if test -x /usr/local/bin/brew
  /usr/local/bin/brew sehllenv | source
end
