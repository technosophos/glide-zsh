# Automatically set GOPATH for Glide projects.
if [[ -e $( which -p glide 2>&1 ) ]]; then

  # The chpwd hook.
  function glide_upward {
    dir=$PWD
    while true; do
      if [[ -f "$dir/Glide.yaml" ]]; then
        export ALREADY_GLIDING=1
        export GOPATH=$(glide gopath)
        return
      else
        old=$dir
        dir=$(dirname $dir)
        if [[ $old == $dir ]]; then
          export ALREADY_GLIDING=1
          return
        fi
      fi
    done
  }

  # Add glide_in to the chpwd hook functions if it's not already
  # in there. See virtualwrapper.plugin.zsh and
  # http://www.refining-linux.org/archives/42/ZSH-Gem-8-Hook-function-chpwd/
  if ! (( $chpwd_functions[(I)glide_upward] )); then
    chpwd_functions+=(glide_upward)
  fi
fi
