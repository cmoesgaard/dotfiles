# Defined in - @ line 1
function git-prune-local 
  git branch -vv | grep ': gone]' | awk '{print $1}' | xargs -r git branch -D $argv;
end
