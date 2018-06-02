# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# sync history after every command
# credit: https://unix.stackexchange.com/questions/131504/how-to-sync-terminal-session-command-history-in-bash
PROMPT_COMMAND="history -a; history -n"


# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    # PS1='\w\[\033[00m\]\$ '
    # A two-line colored Bash prompt (PS1) with Git branch and a line decoration
    # which adjusts automatically to the width of the terminal.
    # Recognizes and shows Git, SVN and Fossil branch/revision.
    # Screenshot: http://img194.imageshack.us/img194/2154/twolineprompt.png
    # Michal Kottman, 2012
     
    RESET="\[\033[0m\]"
    RED="\[\033[0;31m\]"
    GREEN="\[\033[01;32m\]"
    BLUE="\[\033[01;34m\]"
    YELLOW="\[\033[0;33m\]"
    WHITE="\[\033[1;37m\]"
     
    PS_LINE=`printf -- '- %.0s' {1..200}`
    function parse_git_branch {
      PS_BRANCH=''
      if [ -d .svn ]; then
        PS_BRANCH="(svn r$(svn info|awk '/Revision/{print $2}'))"
        return
      elif [ -f _FOSSIL_ -o -f .fslckout ]; then
        PS_BRANCH="(fossil $(fossil status|awk '/tags/{print $2}')) "
        return
      fi
      ref=$(git symbolic-ref HEAD 2> /dev/null) || return
      PS_BRANCH="⎇  ${ref#refs/heads/} "
    }
    PROMPT_COMMAND="${PROMPT_COMMAND};parse_git_branch"
    PS_INFO="  $BLUE\w"
    PS_GIT="$YELLOW\$PS_BRANCH"
    PS_TIME="\[\033[\$((COLUMNS-10))G\] $RED[\t]"
    PS1="${PS_INFO} ${PS_GIT}\n${RESET}${BLUE}\$${RESET} "
else
  PS1='\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export PATH=/usr/local/go/bin:$PATH:/home/daniel/Android/Sdk/tools:/home/daniel/Android/Sdk/platform-tools:/home/daniel/src/my-utils:/home/daniel/.local/bin:/home/daniel/src/dotfiles/bin:/home/daniel/go/bin
export ANDROID_HOME=~/Android/Sdk
export ANDROID_NDK=~/Android/Ndk

# Runtime setup
~/src/dotfiles/bin/setup-tmux
source ~/src/dotfiles/bin/virtualenv.sh

# export NVM_DIR="/home/daniel/.nvm"
# export NODE_DEFAULT_VERSION=6.10
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# nvm use $NODE_DEFAULT_VERSION

source virtualenvwrapper.sh
export PYTHONDONTWRITEBYTECODE=1

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/daniel/.nvm/versions/node/v6.10.2/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /home/daniel/.nvm/versions/node/v6.10.2/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/daniel/.nvm/versions/node/v6.10.2/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /home/daniel/.nvm/versions/node/v6.10.2/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
