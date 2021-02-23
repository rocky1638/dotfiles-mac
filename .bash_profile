# stuff for fast.ai
export IMAGE_FAMILY="pytorch-latest-gpu" # or "pytorch-latest-cpu" for non-GPU instances
export ZONE="us-west2-b" # budget: "us-west1-b"
export INSTANCE_NAME="my-fastai-instance"
export INSTANCE_TYPE="n1-highmem-8" # budget: "n1-highmem-4"

# General
alias c="clear"
alias cl='printf "\033c"'
alias la="ls -a"
alias rm="rm -i"
alias ca="/bin/cat"
alias cat='pygmentize -O style=friendly -f console256 -g'
alias vimo="/usr/local/bin/vim"
alias vi="nvim"
alias vim="nvim"
alias ctagso="/usr/local/bin/ctags"
alias ctags="/usr/local/Cellar/ctags/5.8_1/bin/ctags"
alias lc="leetcode"
alias tmux="TERM=tmux-256color THEME=\"$THEME\" tmux"
alias sl="sl | lolcat"
alias dk="docker"

# Navigation Aliases:
alias wks="cd ~/workstation"
alias lectures="cd ~/workstation/cs246/lectures"
alias school="cd ~/Desktop/School/2b"
alias wiki="cd ~/workstation/obsidian"

# Git
alias gacs='git add -A && git commit -m "quick save" && git push'
alias config="alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'"

# SSH
alias connect="ssh -Y ry2zhou@linux.student.cs.uwaterloo.ca"
alias ugster="ssh ry2zhou@ugster401.student.cs.uwaterloo.ca"
alias ugster2="ssh ry2zhou@ugster405.student.cs.uwaterloo.ca"
alias ugster_site="ssh -L 8080:ugster401.student.cs.uwaterloo.ca:80 ry2zhou@ubuntu1804-008.student.cs.uwaterloo.ca"
alias fastai="gcloud compute ssh --zone=$ZONE jupyter@$INSTANCE_NAME -- -L 8080:localhost:8080"

# Docker
alias dc="docker-compose"

# FZF
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*" --glob "!node_modules/*" --glob "!tags" --glob "!target/*"'

# Stuff For FFF
f() {
  fff "$@"
  cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}
export EDITOR="nvim"
export FFF_TRASH=~/.Trash
export FFF_FAV1=~/workstation
export FFF_FAV2=~/.bash_profile
export FFF_FAV3=
export FFF_FAV4=
export FFF_FAV5=
export FFF_FAV6=
export FFF_FAV7=
export FFF_FAV8=
export FFF_FAV9=

# Customize Terminal
export PS1="\[\033[m\]\033[33;01m\h\[\033[32m\] \[\033[33;1m\]\w\[\033[m\] "
export CLICOLOR=1


# Add user-created scripts to PATH
PATH="${HOME}/.scripts:${PATH}"
PATH="/usr/local/bin:${PATH}"
PATH="/usr/local/go/bin:${PATH}"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$/Users/rockzhou/workstation/google-cloud-sdk/path.bash.inc' ]; then . '/Users/rockzhou/workstation/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/rockzhou/workstation/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/rockzhou/workstation/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export YVM_DIR=/Users/rockzhou/.yvm
[ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export PATH="/usr/local/opt/openssl/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"
