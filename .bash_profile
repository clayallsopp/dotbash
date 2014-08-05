source ~/.git-completion.bash
source ~/.git-prompt.sh

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

export PS1=$LIGHT_GRAY"\u@\h"'$(
    g=$(__git_ps1 " (%s)")
    if [[ "$g" =~ \*\)$ ]]
    then echo "'$YELLOW'$g"
    elif [[ "$g" =~ \+\)$ ]]
    then echo "'$MAGENTA'$g"
    else echo "'$CYAN'$g"
    fi)'$LIGHT_GRAY" \w"$GREEN": "

alias sbl='sblm .'
alias brake='bundle exec rake'

alias gundo='git reset --soft HEAD^'
alias gredo='git commit -c ORIG_HEAD'
