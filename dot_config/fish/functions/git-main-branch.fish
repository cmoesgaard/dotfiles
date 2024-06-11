function git-main-branch
 git branch | cut -c 3- | grep -E '^master$|^main$'; 
end
