# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# Last modified by Kevin Cole <kevin.cole@novawebcoop.org> 2020.06.14 (kjc)
#
# 2016.09.13 KJC - Disabled caps lock
# 2018.07.11 KJC - Fancying up GPG
# 2019.05.18 KJC - Commented out the old(?) SSH way. Added the arch way
# 2019.12.25 KJC - Added Wasmer (WebAssembly). See https://wasmer.io/
# 2019.12.28 KJC - Switched to systemd path for private bin
# 2020.02.19 KJC - mdv & mdvs - simple CLI Markdown (.md) viewers
# 2020.02.10 KJC - Create a "search" function to force regextype in find
#

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options (ignoredups, ignorespace or ignoreboth).
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

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
#force_color_prompt=yes

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
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
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

# 2016.09.13 KJC - Disable caps lock
setxkbmap -option caps:none

# 2018.05.24 KJC - Set up virtualenvwrapper for Python 2
#
#source /usr/bin/virtualenvwrapper_lazy.sh

# 2018.07.11 KJC - Fancying up GPG
# See:
# https://sadanand-singh.github.io/posts/completesetuparch wayma/#gpg-setup
#

# set GPG TTY
export GPG_TTY=$(tty)

# Refresh gpg-agent tty in case user switches into an X Session
gpg-connect-agent updatestartuptty /bye >/dev/null

# Set SSH to use gpg-agent
# 2019.05.18 KJC - Commented out the old(?) SSH way. Added the arch way
#                  https://wiki.archlinux.org/index.php/SSH_keys#SSH_agents
#
#unset SSH_AGENT_PID
#if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
#  export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
#fi
#
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    eval "$(<~/.ssh-agent-thing)"
fi

# 2020.02.19 KJC - mdv & mdvs - simple CLI Markdown (.md) viewers
#
mdv()  { pandoc  $1 | lynx -stdin; }
mdvs() { fold -s $1 | most;        }

# 2020.02.10 KJC - Create a "search" function to force regextype in find
#
# Valid types (in no particular order) are:
#
#    findutils-default  ed               emacs                gnu-awk
#    posix-awk          posix-basic      posix-egrep          grep
#    egrep              posix-extended   posix-minimal-basic  sed
#    awk
#
search() {
    dir=$1;
    shift;
    find $dir -regextype egrep $*
}

# 2019.12.28 KJC - Switched to systemd path for private bin
#
export PATH=$PATH:$HOME/.local/bin

# 2019.12.25 KJC - Added Wasmer (WebAssembly). See https://wasmer.io/
#
export WASMER_DIR="/home/kjcole/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"
