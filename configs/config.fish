# ls(exa)
alias ls='exa --grid --icons --git'
alias ll='exa --long --icons --git'
alias lt='exa --tree --icons --git'
alias ltl='exa --tree --long --icons --git --level=2'

# util
alias cd~="cd /mnt/c/Users/coura/"
alias cddocs="cd /mnt/c/Users/coura/Documents/"
alias cddwn="cd /mnt/c/Users/coura/Downloads/"
alias norm="norminette"
alias witch="which"
alias jan='LANG=ja_JP.utf8 man'
alias fishconfig="code ~/.config/fish/config.fish"
alias starconfig="code ~/.config/starship.toml"
alias pd="cd ../;ls"
alias untgz="tar -xzvf"

# git
alias ga="git add"
alias ga.="git add ."
alias gicm="git commit -m"
alias gpsh="git push"
alias gpl="git pull"
alias gc="git checkout"
alias gc.="git checkout ."
alias gb="git branch"
alias gm="git merge"
alias gd="git diff"
alias gl="git log"
alias gcl="git clone"

# npm
alias n="npm"
alias nr="npm run"
alias pi="pnpm install"

# python
alias py="python3"
alias penv="python3 -m venv venv"
alias pact=". venv/bin/activate.fish"

# github
alias ghil="gh issue list"
alias ghi="gh issue"
alias ghic="gh issue create"

# c
alias m="make"
alias mc="make clean"
alias mf="make fclean"
alias mr="make re"

# docker
alias dk="docker"
alias dc="docker-compose"
alias dkr="docker run"
alias dkb="docker build"

alias antlr4='java -jar /usr/local/lib/antlr-4.10.1-complete.jar'
alias grun='java org.antlr.v4.gui.TestRig'

export DENO_INSTALL="/home/cou/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="/home/cou/.local/bin:$PATH"
export PNPM_HOME="/home/cou/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
export CXX=clang++
export CC=clang
# keybinds
bind \cn backward-kill-path-component

starship init fish | source
