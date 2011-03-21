# who's paired?
function pair_prompt_info() {
  if [[ -z $(echo $GIT_AUTHOR_NAME 2> /dev/null) ]]; then
    return
  fi
  pairs=$(echo $GIT_AUTHOR_NAME | awk '{print $1 "+" $4}' 2> /dev/null) || return
  echo "$ZSH_THEME_PAIR_PROMPT_PREFIX$pairs$ZSH_THEME_PAIR_PROMPT_SUFFIX"
}
