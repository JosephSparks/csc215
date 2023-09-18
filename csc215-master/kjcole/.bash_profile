#
# ~/.bash_profile  (nee ~/.profile)
#
# Last modified by Kevin Cole <kjcole@ubuntu.com> 2020.10.25 (kjc)
#
# 2014.05.31 KJC - pip install --user puts stuff in ~/.local/bin
#                  So, added that to the PATH.
# 2014.09.03 KJC - Added Debian packaging environment variables
# 2014.09.15 KJC - Added "(DC LoCo Team)" to the DEBFULLNAME
# 2015.01.01 KJC - Force intelligent sorting?
# 2015.06.25 KJC - Installed cask because emacs jedi autocomplete
#                  wants it. See http://cask.readthedocs.org/en/latest/
# 2016.04.10 KJC - Rebuiding from scratch...
# 2016.12.23 KJC - Added rust / cargo path to PATH
# 2017.03.25 KJC - most now supports regex searches! Make that the default 
# 2017.05.25 KJC - Add PyEnv stuff
# 2017.05.25 KJC - Removed PyEnv stuff
# 2018.05.24 KJC - Set up virtualenvwrapper for Python 2
# 2018.06.02 KJC - Set up a graphic (KDE) ssh password query
# 2019.12.26 KJC - Switched to GNOME2 ssh password query
# 2018.07.16 KJC - Added DISPLAY environment variable for remote X11
# 2018.12.09 KJC - Updated Emscripten SDK (emsdk_portable) toolchain stuff
# 2019.12.25 KJC - keychain is broken. Back to ssh-agent, ssh-add
# 2019.12.28 KJC - Switched to systemd path for private bin
# 2020.10.25 KJC - Change minicom Ctrl-A to Alt-Z and add color
#

# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
# 2019.12.28 KJC - Switched to systemd path for private bin
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# 2015.06.25 KJC - Installed cask because emacs jedi autocomplete wants it.
#                  See http://cask.readthedocs.org/en/latest/
#
PATH="/home/kjcole/.cask/bin:$PATH"

# 2016.12.23 KJC - Added rust / cargo path to PATH
#
PATH="$HOME/.cargo/bin:$PATH"

# 2015.01.01 KJC - Force intelligent sorting?
# 2016.05.10 KJC - Commented out
#
# Defaults were LANG=en_US.UTF-8 and LANGUAGE=en_US
#
#export LANG="C"
#export LC_ALL="C"
#export LC_CTYPE="C"
#export LOCALE=C

# 2015.07.18 KJC - Python does weird shit.
#export LC_ALL="en_US.UTF-8"
#export LC_CTYPE="en_US.UTF-8"

# 2014.08.10 KJC - Added syntax highlighting to less
#
# See:
#   https://superuser.com/questions/117841/get-colors-in-less-command
#
export LESS="-R"
export LESSOPEN="| /usr/bin/lesspipe | ~/.lessfilter %s"

# 2014.09.03 KJC - Added Debian packaging environment variables
#
# See:
#   http://packaging.ubuntu.com/html/getting-set-up.html
#
export DEBFULLNAME="Kevin Cole (DC LoCo Team)"
export DEBEMAIL="dc.loco@gmail.com"

export EDITOR="emacs -nw"
export PAGER="most"

# 2017.03.25 KJC - most now supports regex searches! Make that the default 
#
export MOST_SWITCHES="-r"

export PATH
_byobu_sourced=1 . /usr/bin/byobu-launch 2>/dev/null || true


# 2018.05.24 KJC - Set up virtualenvwrapper for Python 2
#
export WORKON_HOME=~/.local/share/virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2.7
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv2

# 2018.06.02 KJC - Set up a graphic (KDE) ssh password query
# 2019.12.26 KJC - Switched to GNOME2 ssh password query
#
export SSH_ASKPASS=ksshaskpass
export SSH_ASKPASS=ssh-askpass-fullscreen

# 2018.07.14 KJC - Keychain, ssh-agent, etc.
#
#eval $(keychain --eval id_dsa id_rsa id_ed25519 id_ecdsa 6CCB33973E696927)

# 2019.12.25 KJC - keychain is broken. Back to ssh-agent, ssh-add
#
eval $(ssh-agent -s)
ssh-add

# 2018.07.16 KJC - Added DISPLAY environment variable for remote X11
#export DISPLAY=localhost:0

# 2020.10.25 KJC - Change minicom Ctrl-A to Alt-Z and add color
#
export MINICOM='-m -c on'
