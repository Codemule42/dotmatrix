PROMPT='$(git_prompt_info)$(pair_prompt_info)$(rvm_prompt_info) %F{11}%c%f
%B%F{7}〓%f%b %{$reset_color%}'
RPROMPT='%F{12}%n%F{8}@%F{13}%m%f%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{8}±❮%F{8}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{8}❯%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{1}"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{10}"

ZSH_THEME_PAIR_PROMPT_PREFIX="%F{8}❮%f%F{14}"
ZSH_THEME_PAIR_PROMPT_SUFFIX="%F{8}❯%{$reset_color%}"

ZSH_THEME_RVM_PROMPT_PREFIX="%F{8}❮%f%F{9}"
ZSH_THEME_RVM_PROMPT_SUFFIX="%F{8}❯%{$reset_color%}"
