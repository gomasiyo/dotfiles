alias pbcopy='clip.exe'
alias vim='nvim'

# ls alias
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"

# exa alias
if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
  alias lt 'exa -T -L 3 -a -I "node_modules|.git|.cache" --icons'
end
