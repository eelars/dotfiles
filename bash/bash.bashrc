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
alias pyra2="source /home/jerome/Documents/dev/venvs/pyra2/bin/activate"
alias pyra3="source /home/jerome/Documents/dev/venvs/pyra3/bin/activate"
alias gdienv="source ~/Documents/dev/venvs/gdienv/bin/activate"
alias django="source /home/jerome/Documents/dev/venvs/django/bin/activate"
alias pyenvactivate="source /home/jerome/.scripts/pyenvactivate.sh"
alias yt="youtube-dl"
alias ytaudio="youtube-dl -x -o \"%(playlist_index)s - %(title)s.%(ext)s\" --embed-thumbnail --audio-format mp3"
#alias ytaudio="url=`.scripts/get_ytlist.py $1` && youtube-dl -x -o \"%(playlist_index)s - %(title)s.%(ext)s\" --embed-thumbnail --audio-format mp3 $url"

alias rec="ffmpeg -f x11grab -s 1280x800 -an -i :0.0 -c:v libvpx -b:v 5M -crf 10 -quality realtime -y -loglevel quiet"
alias cam="mplayer -tv driver=v4l2:width=320:height=240: -vo xv tv:// -geometry '99%:90%' -ontop"
alias diff="diff --color"
alias encrypt-local="gpg2 -c --cipher-algo twofish --s2k-digest-algo SHA512"
alias decrypt-local="gpg2 --decrypt"
alias chromium="chromium -incognito"
alias steam-wine='WINEDEBUG=-all wine ~/.wine/drive_c/Program\ Files/Steam/Steam.exe'
alias backup="sudo borgmatic --verbosity 1"

# env
export EDITOR="vim"
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11R6/bin:/usr/games
export PAGER="less -s"
export TERM="xterm-256color"
export BROWSER="firefox"

# Java
#export JAVA_HOME="/opt/jvm/jdk1.8.0_192"
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk"
export MAVEN_OPTS="-Xms512m -Xmx2048m"
export PATH=$JAVA_HOME/bin:$PATH
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$JAVA_HOME/lib"

# Perl binaries
export PATH=$PATH:/usr/bin/core_perl

# nodejs
export PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

# completion
[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

# root is red
if [ $(id -u) -eq 0 ]; then
  COL=9
else
  COL=10
fi

WHITE=7

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1='\[$(tput setaf ${COL})\]\u@\h: \W\[$(tput setaf ${WHITE})\]$(parse_git_branch) \[$(tput setaf ${COL})\]\342\226\270 \[$(tput sgr0)\]'


# libreoffice
export OOO_FORCE_DESKTOP=kde

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
