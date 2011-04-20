PROMPT='$(git_prompt_info)$(pair_prompt_info)$(rvm_prompt_info) %F{yellow}%c%f
%B%F{7}〓%f%b %{$reset_color%}'
RPROMPT='%F{3}%n%f%{$reset_color%}@%F{4}%m%f%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{10}±❮%F{8}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{10}❯%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"

ZSH_THEME_PAIR_PROMPT_PREFIX="%F{10}❮%f%F{13}"
ZSH_THEME_PAIR_PROMPT_SUFFIX="%F{10}❯%{$reset_color%}"

ZSH_THEME_RVM_PROMPT_PREFIX="%F{10}❮%f%F{6}"
ZSH_THEME_RVM_PROMPT_SUFFIX="%F{10}❯%{$reset_color%}"
