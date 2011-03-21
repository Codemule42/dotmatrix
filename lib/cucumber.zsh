# Shorter cucumber alias.
# In a rails project root, just type `cuke feature-name`
cuke() {
  local file="$1"
  shift
  cucumber "features/$file" $@
}
compctl -g '*.feature' -W features cuke
