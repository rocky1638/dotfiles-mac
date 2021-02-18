source ~/.bash_profile
source ~/.antigen/antigen.zsh

antigen use oh-my-zsh

# default oh-my-zsh bundles
antigen bundle git
antigen bundle heroku
antigen bundle lein
antigen bundle command-not-found

# vi highlighting
antigen bundle vi-mode

# syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle greymd/docker-zsh-completion

# theme
export SPACESHIP_BATTERY_THRESHOLD=40
export SPACESHIP_CHAR_PREFIX=""
export SPACESHIP_VI_MODE_SHOW=false
export SPACESHIP_NODE_SHOW=false
export SPACESHIP_DOCKER_SHOW=false
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  dotnet        # .NET section
  ember         # Ember.js section
  kubecontext   # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
#export SPACESHIP_RPROMPT_ORDER=(
  #time          # Time stamps section
#)
#antigen theme denysdovhan/spaceship-prompt
#antigen theme starship/starship

# apply everything
antigen apply

autoload zmv
alias zmv="zmv -n"

# installation for rupa/z
. $HOME/.scripts/z.sh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
eval "$(direnv hook zsh)"
eval "$(starship init zsh)"

export YVM_DIR=/Users/rockzhou/.yvm
[ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
