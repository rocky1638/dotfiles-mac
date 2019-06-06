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

# Navigation Aliases:
alias wks="cd ~/workstation"
alias lectures="cd ~/workstation/cs246/lectures"
alias school="cd ~/Desktop/School/2b"

# Git
alias gacs='git add -A && git commit -m "quick save" && git push'
alias config="alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'"

# School
alias connect="ssh -Y ry2zhou@linux.student.cs.uwaterloo.ca"

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
PATH="/Users/rockzhou/Library/Python/3.7/bin:${PATH}"

export PATH="$HOME/.cargo/bin:$PATH"
