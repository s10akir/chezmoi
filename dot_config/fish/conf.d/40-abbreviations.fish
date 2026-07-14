if status is-interactive
  abbr -a cat bat

  abbr -a f 'fzf -q'

  abbr -a g git
  abbr -a branch 'git branch | fzf | xargs git switch'
  abbr -a repo 'cd (ghq list | fzf | xargs -I DIR echo (ghq root)/DIR)'
  abbr -a curb 'git rev-parse --abbrev-ref HEAD | pbcopy'
  
  if command -q nvim
    abbr -a vim nvim
  end
end
