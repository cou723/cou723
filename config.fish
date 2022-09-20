# Put system-wide fish configuration entries here
# or in .fish files in conf.d/
# Files in conf.d can be overridden by the user
# by files with the same name in $XDG_CONFIG_HOME/fish/conf.d

# This file is run by all fish instances.
# To include configuration only for login shells, use
# if status --is-login
#    ...
# end
# To include configuration only for interactive shells, use
# if status --is-interactive
#   ...
# end
alias cd~="cd /mnt/c/Users/Cou/"
alias ga="git add"
alias ga.="git add ."
alias gicm="git commit -m"
alias gpsh="git push"
alias gpl="git pull"
alias norm="norminette"
alias witch="which"

export DENO_INSTALL="/home/cou/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="/home/cou/.local/bin:$PATH"
