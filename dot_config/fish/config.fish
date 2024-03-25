starship init fish | source
zoxide init fish | source
source /opt/asdf-vm/asdf.fish

set fish_greeting

if test -z (pgrep ssh-agent | string collect)
    eval (ssh-agent -c)
    set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
    set -Ux SSH_AGENT_PID $SSH_AGENT_PID
end

abbr -a --set-cursor -- gpmr "git push -u -o merge_request.create -o merge_request.title=(jira)': %'"
abbr -a --set-cursor -- gpmrd "git push -u -o merge_request.create -o merge_request.draft -o merge_request.title=(jira)': %'"


