path=(
  "$HOME/bin"
  /usr/local/bin
  /usr/local/sbin
  /opt/local/bin
  /usr/bin
  /bin
  /usr/sbin
  /sbin
  /usr/X11/bin
  "$HOME/.rvm/bin"
)

# westarete dev env
export WESTARETE_DIR="$HOME/westarete"

# import the westarete rc file, if present
wrc="$WESTARETE_DIR/dotmatrix/.westrc"
[[ -a $wrc ]] && source $wrc

# color term
export CLICOLOR=1       # some shells need this for colorized output
export GREP_COLOR=32    # colorized grep!
export GREPCOLOR=32     # dito here
export LSCOLORS=Dxfxcxdxbxegedabadacad
export TERM=xterm-256color
export ZLS_COLORS=$LSCOLORS
export LC_CTYPE=en_US.UTF-8
export LESS=FRX

# make with the nice completion
autoload -U compinit; compinit

# make with the pretty colors
autoload colors; colors

# options
setopt appendhistory autocd extendedglob histignoredups correctall nonomatch prompt_subst

# Bindings
# external editor support
autoload edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

# Partial word history completion
bindkey '\ep' up-line-or-search
bindkey '\en' down-line-or-search
bindkey '\ew' kill-region
bindkey '^r' history-incremental-search-backward

# history
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY

# default apps
(( ${+PAGER}   )) || export PAGER='less'
(( ${+EDITOR}  )) || export EDITOR='vim'
export PSQL_EDITOR='vim -c"set syntax=sql"'

# just say no to zle vim mode:
bindkey -e

# aliases
alias mv='nocorrect mv'       # no spelling correction on mv
alias cp='nocorrect cp'
alias mkdir='nocorrect mkdir'
alias spec='nocorrect spec'
alias rspec='nocorrect rspec'
alias hitch='nocorrect hitch'
alias ll="ls -la"
alias l.='ls -ld .[^.]*'
alias lsd='ls -ld *(-/DN)'
alias md='mkdir -p'
alias rd='rmdir'
alias cd..='cd ..'
alias ..='cd ..'
alias spec='spec -c'
alias heroku='nocorrect heroku'

# set cd autocompletion to commonly visited directories
cdpath=(~ ~/src $DEV_DIR $WESTARETE_DIR)

# load from Rubygems
export RUBYOPT='rubygems'

# rvm-install added line:
if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then source "$HOME/.rvm/scripts/rvm" ; fi

cuke() {
  local file="$1"
  shift
  cucumber "features/$file" $@
}
compctl -g '*.feature' -W features cuke

# import local zsh customizations, if present
zrcl="$HOME/.zshrc.local"
[[ -a $zrcl ]] && source $zrcl
