# aliases
alias vi vim
alias C clear
alias E exit
alias H history
alias P pwd
alias l 'ls -CF'
alias ll 'ls -kla'
alias ls 'ls --color'
alias psa 'ps -aux'
alias pyra3 "source ~/Documents/dev/venvs/pyra3/bin/activate.fish"
alias yt "youtube-dl"
alias ytaudio "youtube-dl -x -o \"%(playlist_index)s - %(title)s.%(ext)s\" --embed-thumbnail --audio-format mp3"
alias rec "ffmpeg -f x11grab -s 1280x800 -an -i :0.0 -c:v libvpx -b:v 5M -crf 10 -quality realtime -y -loglevel quiet"
alias cam "mplayer -tv driver v4l2:width 320:height 240: -vo xv tv:// -geometry '99%:90%' -ontop"
alias diff "diff --color"
alias encrypt-local "gpg2 -c --cipher-algo twofish --s2k-digest-algo SHA512"
alias decrypt-local "gpg2 --decrypt"
alias chromium "chromium -incognito"
alias steam-wine 'WINEDEBUG -all wine ~/.wine/drive_c/Program\ Files/Steam/Steam.exe'
alias backup "sudo borgmatic --verbosity 1"

# env
set EDITOR "vim"
set PATH /usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11R6/bin:/usr/games
set PAGER "less -s"
set TERM "xterm-256color"
set BROWSER "qutebrowser"

# Java
set JAVA_HOME "/usr/lib/jvm/java-11-openjdk"
set MAVEN_OPTS "-Xms512m -Xmx2048m"
set PATH $JAVA_HOME/bin:$PATH
set LD_LIBRARY_PATH "$LD_LIBRARY_PATH:$JAVA_HOME/lib"

# Perl binaries
set PATH $PATH:/usr/bin/core_perl

# nodejs
set PATH "$HOME/.node_modules/bin:$PATH"
set npm_config_prefix ~/.node_modules

# libreoffice
set OOO_FORCE_DESKTOP kde

# launch
function fish_greeting
  status --is-login
  if [ $status != 0 ]
  end
end
