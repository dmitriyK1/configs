export DISPLAY=:0.0
export Xauthority=/home/dima/.Xauthority
xhost +localhost > /dev/null

export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

alias sus='sudo pm-suspend'
alias vu='vagrant up'
alias vs='vagrant ssh'
alias calc='python -ic "from __future__ import division; from math import *; from random import *"'
alias fu='fu -v'
alias a='sudo apt-get autoremove'
alias A='sudo apt-get autoclean'
alias dirs='dirs -vpl'
alias tl='trash-list'
alias te='trash-empty'
alias i='sudo apt-get install -y'
alias k='sudo kill -s 9 '
alias s='sudo apt-cache search '
alias S='sudo apt-cache show '
alias u='sudo rm -rf /var/lib/apt/lists && sudo apt-get update'
alias U='sudo apt-get dist-upgrade -y && sudo apt-get clean && sudo apt-get autoclean && sudo apt-get autoremove'
alias uu='sudo apt-get update && sudo apt-get upgrade'
alias ta='TERM=xterm-256color tmux attach'
alias tn='TERM=xterm-256color tmux new'
alias t='transmission-remote-cli -f ~/.trclirc'
alias tz='/home/dima/Soft/torrentz.eu_shell_search_api_script.sh'
alias tp='/home/dima/Soft/tpb.sh'
alias tr='/home/dima/Soft/torrtux-1.1.5/torrtux'
alias f='python /home/dima/Soft/fttps/fttps.py'
alias q='vim /home/dima/Soft/fttps/fttps.queue'
alias fq='vim /home/dima/Soft/fttps/fttps.queue && python /home/dima/Soft/fttps/fttps.py'
alias m='python3 /home/dima/Soft/mountie/mountie.py'
alias v='pacmixer'
# alias ls='ls -lha'
alias abk='abook'
alias cl='/home/dima/bleachbit.sh'
alias -s txt=nano
alias -s avi=vlc
alias gcl='git clone '
alias sr='surfraw google -t -browser=elinks'
alias y='mpsyt'
alias ytv='youtube-viewer'

unalias grc

# set emacs keybindings
bindkey -e

bindkey '\e[A' history-substring-search-up
bindkey '\e[B' history-substring-search-down

setxkbmap -option ctrl:swapcaps
# setxkbmap -layout 'us,ru' -option 'grp:ctrl_shift_toggle'

# devilspie &

  # Colorizing with grc.
  (( $+commands[grc] )) && {
    alias ls='grc ls -lha'
    alias @diff='command diff' && alias diff='grc diff'
    alias @make='command make' && alias make='grc make'
    alias @gcc='command gcc' && alias gcc='grc gcc'
    alias @g++='command g++' && alias g++='grc g++'
    alias @ld='command ld' && alias ld='grc ld'
    alias @netstat='command netstat' && alias netstat='grc netstat'
    alias @ping='command ping' && alias ping='grc ping'
    alias @cvs='command cvs' && alias cvs='grc cvs'
    alias @traceroute='command traceroute' && alias traceroute='grc traceroute'
  }

  # Colorizing with color(diff|svn|cvs|gcc|make).
  (( $+commands[colordiff] )) && alias @diff='command diff' && alias diff='colordiff'
  (( $+commands[colorsvn] )) && alias @svn='command svn' && alias svn='colorsvn'
  (( $+commands[colorcvs] )) && alias @cvs='command cvs' && alias cvs='colorcvs'
  (( $+commands[colormake] )) && alias @make='command make' && alias make='colormake'
  (( $+commands[colorgcc] )) && [[ -d /usr/lib/colorgcc/bin ]] && path=(/usr/lib/colorgcc/bin $path)

w3mimg () {
  w3m -o imgdisplay=/usr/lib/w3m/w3mimgdisplay $1
}

if [ "$TMUX" = "" ]; then ta || tn; fi

# loadkeys /usr/share/keymaps/i386/qwerty/emacs2.kmap.gz
#-------- Color Commands
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
#    alias ls='ls --color=auto -la'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

#source ~/.zsh-autosuggestions/autosuggestions.zsh
#
# Enable autosuggestions automatically
#zle-line-init() {
#    zle autosuggest-start
#}
#zle -N zle-line-init

# bindkey '^T' autosuggest-toggle

# Accept suggestions without leaving insert mode
# bindkey '^f' vi-forward-word
# or
#bindkey '^f' vi-forward-blank-word
