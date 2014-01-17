path=(
  .git/safe/../../bin
  $HOME/bin
  /usr/local/bin
  /usr/local/sbin
  /usr/bin
  /bin
  /usr/sbin
  /sbin
  /usr/X11/bin
  $HOME/.rvm/bin
  ./bin:...
)

# load all config/library scripts
for config_file ($PLAY_DIR/dotmatrix/lib/*.zsh) source $config_file

# import the company rc file, if present
wrc="$PLAY_DIR/dotmatrix/.workrc"
[[ -a $wrc ]] && source $wrc

# color term
export CLICOLOR=1       # some shells need this for colorized output
export GREP_COLOR=32    # colorized grep!
export GREPCOLOR=32     # also colorizes grep, depending on version
export LSCOLORS=Dxfxcxdxbxegedabadacad
export ZLS_COLORS=$LSCOLORS
export TERM=xterm-256color
export LC_CTYPE=en_US.UTF-8
export LESS=FRX

# make with the nice completion
autoload -U compinit; compinit

# make with the pretty colors
autoload colors; colors

# options
setopt appendhistory autocd extendedglob histignoredups nonomatch prompt_subst

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
(( ${+PAGER}       )) || export PAGER='less'
(( ${+EDITOR}      )) || export EDITOR='vim'
(( ${+PSQL_EDITOR} )) || export PSQL_EDITOR='vim'

# just say no to zle vim mode:
bindkey -e

# common aliases
alias mv='nocorrect mv'       # no spelling correction on mv
alias cp='nocorrect cp'
alias mkdir='nocorrect mkdir'
alias spec='nocorrect spec'
alias rspec='nocorrect rspec'
alias hitch='nocorrect hitch'
alias ll='ls -laF'
alias l.='ls -ld .[^.]*'
alias lsd='ls -ld *(-/DN)'
alias md='mkdir -p'
alias rd='rmdir'
alias cd..='cd ..'
alias ..='cd ..'
alias spec='spec -c'
alias heroku='nocorrect heroku'

alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias shortprompt="export PS1='$ '"   # For screencasting.
alias slt="subl"

# Git functions
alias gd='git diff --word-diff | slt'
alias gba='git branch -a'
alias grm='git ls-files --deleted | xargs git rm'
alias gx='gitx --all'

# set cd autocompletion to commonly visited directories
cdpath=(~ ~/src $DEV_DIR ~/play)

# load from Rubygems
export RUBYOPT='rubygems'

# # fix mysql2 gem
# export DYLD_LIBRARY_PATH="/usr/local/Cellar/mysql/5.5.15/lib/"

# Load the theme
source "$PLAY_DIR/dotmatrix/themes/judy_256.zsh"

# import local zsh customizations, if present
zrcl="$HOME/.zshrc.local"
[[ -a $zrcl ]] && source $zrcl

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Fun stuff
wiki() { dig +short txt $1.wp.dg.cx; }