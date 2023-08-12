# ls(exa)
if type exa > /dev/null 2>&1
  alias ls='exa --grid --icons --git'
  alias ll='exa --long --icons --git'
  alias lt='exa --tree --icons --git'
  alias ltl='exa --tree --long --icons --git --level=2'
end


# util
alias cd~="cd /mnt/c/Users/coura/"
alias witch="which"
alias fishconfig="code ~/.config/fish/config.fish"
alias starconfig="code ~/.config/starship.toml"
alias pd="cd ../;ls"
alias untgz="tar -xzvf"

# git
alias ga="git add"
alias ga.="git add ."
alias gicm="git commit -m"
alias gicai="aicommits"
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
alias pr="pnpm run"
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
fish_add_path $DENO_INSTALL/bin
fish_add_path /home/cou/.local/bin
export PNPM_HOME="/home/cou/.local/share/pnpm"
# export PATH="$PNPM_HOME:$PATH"
# export ANDROID_HOME=$HOME/Android
# export PATH="$ANDROID_HOME/emulator:$PATH"
# export PATH="$ANDROID_HOME/tools:$PATH"
# export PATH="$ANDROID_HOME/tools/bin:$PATH"
# export PATH="$ANDROID_HOME/platform-tools:$PATH"

starship init fish | source
