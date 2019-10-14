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
alias python="python3"
alias pip="pip3"
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

# Git
alias gacs='git add -A && git commit -m "quick save" && git push'
alias config="alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'"

# SSH
alias connect="ssh -Y ry2zhou@linux.student.cs.uwaterloo.ca"
alias fastai="gcloud compute ssh --zone=$ZONE jupyter@$INSTANCE_NAME -- -L 8080:localhost:8080"

# Docker
alias dc="docker-compose"

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*" --glob "!node_modules/*" --glob "!tags" --glob "!target/*"'

# Customize Terminal
export PS1="\[\033[m\]\033[33;01m\h\[\033[32m\] \[\033[33;1m\]\w\[\033[m\] "
export CLICOLOR=1

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Add user-created scripts to PATH
PATH="${HOME}/.scripts:${PATH}"
PATH="/usr/local/bin:${PATH}"
PATH="$HOME/Library/Python/3.7/bin:${PATH}"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$/Users/rockzhou/workstation/google-cloud-sdk/path.bash.inc' ]; then . '/Users/rockzhou/workstation/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/rockzhou/workstation/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/rockzhou/workstation/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
