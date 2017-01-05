# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
function parse_git_branch {
	git symbolic-ref HEAD 2> /dev/null | cut -b 12- | sed -e 's/\(.*\)/(\1)/'
}
function parse_git_repo {
    repo=`git rev-parse --show-toplevel 2> /dev/null`
    if ! [ -z "$repo" ]; then
       basename $repo
    fi
}

shopt -s histappend
export PROMPT_COMMAND="$PROMPT_COMMAND && history -a"; $PROMPT_COMMAND

PS1="[\u@\h:\w]\[\e[33m\]\$(parse_git_repo)\[\e[0m\]\$ "
if [[ -n $SSH_CLIENT ]]; then
	PS1="$PS1 \[\e[31m\](SSH)\[e[0m\]"
fi

EDITOR=vim
HISTFILESIZE=100000
HISTSIZE=100000
export GREP_COLORS='ms=01;31:mc=01;31:sl=:cx=:fn=35:ln=32:bn=32:se=36'
alias ga='git add'
alias gl='git log'
alias gd='git diff'
alias gdc='git diff --cached'
alias gcm='git commit -s'
alias gs='git status'
alias push='git push -v'
alias pull='git pull -v upstream master'
alias less='less -R'
alias v='vimx -p'
