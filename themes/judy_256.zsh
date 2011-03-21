# zsh theme requires 256 color enabled terminal
# i.e TERM=xterm-256color

PROMPT='$(git_prompt_info)$(pair_prompt_info)$(rvm_prompt_info) %F{208}%c%f
%B%F{154}〓%f%b %{$reset_color%}'
RPROMPT='%F{208}%n%f%{$reset_color%}@%F{039}%m%f%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{236}±❮%F{244}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{236}❯%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"

ZSH_THEME_PAIR_PROMPT_PREFIX="%F{236}❮%f%F{067}"
ZSH_THEME_PAIR_PROMPT_SUFFIX="%F{236}❯%{$reset_color%}"

ZSH_THEME_RVM_PROMPT_PREFIX="%F{236}❮%f%F{089}"
ZSH_THEME_RVM_PROMPT_SUFFIX="%F{236}❯%{$reset_color%}"
