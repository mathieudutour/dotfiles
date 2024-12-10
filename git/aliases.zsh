# Use `hub` as our git wrapper:
#   https://github.com/mislav/hub
eval "$(hub alias -s)"

# The rest of my fun git aliases
alias m='git checkout main && git pull origin main'
alias g='git'
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
