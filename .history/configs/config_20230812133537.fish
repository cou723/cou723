# ls(exa)
if type exa > /dev/null 2>&1
  alias ls='exa --grid --icons --git'
  alias ll='exa --long --icons --git'
  alias lt='exa --tree --icons --git'
  alias ltl='exa --tree --long --icons --git --level=2'
end

# cat(bat)
if type bat > /dev/null 2>&1
  alias cat='bat'
end

# du(dust)
if type dust > /dev/null 2>&1
  alias du='dust'
end


# util
alias cd~="cd /mnt/c/Users/coura/"
alias witch="which"
alias fishconfig="code ~/.config/fish/config.fish"
alias vfishconfig="vim ~/.config/fish/config.fish"
alias bashrc="code ~/.bashrc"
alias vbashrc="vim ~/.bashrc"
alias starconfig="code ~/.config/starship.toml"
alias pd="cd ../;ls"
alias untgz="tar -xzvf"

# git
if type git > /dev/null 2>&1
  alias ga="git add"
  alias ga.="git add ."
  alias gicm="git commit -m"
  alias gica="git commit --amend"
  alias gpsh="git push"
  alias gpl="git pull"
  alias gc="git checkout"
  alias gc.="git checkout ."
  alias gb="git branch"
  alias gm="git merge"
  alias gd="git diff"
  alias gl="git log"
  alias gcl="git clone"
end

# npm
if type npm > /dev/null 2>&1
  alias n="npm"
  alias nr="npm run"
  alias ni="npm install"
end
if type pnpm > /dev/null 2>&1
  alias p="pnpm"
  alias pr="pnpm run"
  alias pi="pnpm install"
end

# python
alias py="python3"
alias penv="python3 -m venv venv"
alias pact=". venv/bin/activate.fish"
if type poetry > /dev/null 2>&1
  alias poe="poetry"
end

# github
if type gh > /dev/null 2>&1
  alias ghil="gh issue list"
  alias ghi="gh issue"
  alias ghic="gh issue create"
end

# c
alias m="make"
alias mc="make clean"
alias mf="make fclean"
alias mr="make re"

# docker
if type docker > /dev/null 2>&1
  alias dk="docker"
  alias dc="docker compose"
  alias dkr="docker run"
  alias dkb="docker build"
end

starship init fish | source
