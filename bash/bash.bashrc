#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

# alias
alias vi=vim
alias C=clear
alias E=exit
alias H=history
alias P=pwd
alias l='ls -CF'
alias ll='ls -kla'
alias ls='ls --color'
alias psa='ps -aux'
alias pyra2="source /home/jerome/documents/dev/venvs/pyra2/bin/activate"
alias pyra3="source /home/jerome/documents/dev/venvs/pyra3/bin/activate"
alias django="source /home/jerome/documents/dev/venvs/django/bin/activate"
alias ya="yaourt -Syu --aur"
alias yt="youtube-dl"
alias ytaudio="youtube-dl -citk  --extract-audio --audio-format mp3"
alias rec="ffmpeg -f x11grab -s 1280x800 -an -i :0.0 -c:v libvpx -b:v 5M -crf 10 -quality realtime -y -loglevel quiet"
alias cam="mplayer -tv driver=v4l2:width=320:height=240: -vo xv tv:// -geometry '99%:90%' -ontop"
alias diff="diff --color"
alias encrypt-local="gpg2 -c --cipher-algo twofish --s2k-digest-algo SHA512"
alias decrypt-local="gpg2 --decrypt"

# env
export EDITOR="vim"
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/games
export PAGER="less -s"
export TERM="xterm-256color"
export BROWSER="qutebrowser"

# Java
export JAVA_HOME="/opt/jvm/jdk1.8.0_121"
export MAVEN_OPTS="-Xms512m -Xmx2048m"

# pyenv
#export PYENV_ROOT="/home/jerome/documents/dev/.pyenv"
#eval "$(pyenv init -)"

# Env
export PATH=$JAVA_HOME/bin:$PATH
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$JAVA_HOME/lib"

# Perl binaries
export PATH=$PATH:/usr/bin/core_perl

# completion
[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

# root is red
if [ $(id -u) -eq 0 ]; then
  COL=9
else
  COL=10
fi

PS1='\[$(tput setaf ${COL})\]\u@\h: \W\[$(tput setaf ${COL})\] \342\226\270 \[$(tput sgr0)\]'

# libreoffice
export OOO_FORCE_DESKTOP=kde

# nouveau (qtwebengine problem)
export LIBGL_ALWAYS_SOFTWARE=1

# tmux
settitle() {
  printf "\033k$1\033\\"
}

ssh() {
  title=$(echo "$*" | cut -d@ -f2)
  settitle $title
  command ssh "$@"
  settitle "bash"
}


