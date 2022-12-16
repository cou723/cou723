# ls(exa)
alias ls='exa --grid --icons --git'
alias ll='exa --long --icons --git'
alias lt='exa --tree --icons --git'
alias ltl='exa --tree --long --icons --git --level=2'

# util
alias cd~="cd /mnt/c/Users/Cou/"
alias norm="norminette"
alias witch="which"
alias jan='LANG=ja_JP.utf8 man'
alias py="python3"

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

# npm
alias n="npm"
alias nr="npm run"
alias pi="pnpm install"

export DENO_INSTALL="/home/cou/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="/home/cou/.local/bin:$PATH"
export MANPATH="/mnt/c/Users/Cou/dev/_42/so_long/mlx_linux/man":(manpath)
export PNPM_HOME="/home/cou/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# keybinds
bind \cn backward-kill-path-component

starship init fish | source
