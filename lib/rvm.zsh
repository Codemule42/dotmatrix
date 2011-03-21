# get the name of the ruby-version we are on
function rvm_prompt_info() {
  if [[ -n $(~/.rvm/bin/rvm-prompt s 2> /dev/null) ]]; then
    return
  fi
  ruby_version=$(~/.rvm/bin/rvm-prompt i v 2> /dev/null) || return
  echo "$ZSH_THEME_RVM_PROMPT_PREFIX$ruby_version$ZSH_THEME_RVM_PROMPT_SUFFIX"
}
