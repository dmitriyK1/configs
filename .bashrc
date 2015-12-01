# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '

shopt -s cdspell                 # Correct cd typos
shopt -s cdable_vars                # set the bash option so that no '$' is required (disallow write access to terminal)
shopt -s checkhash
shopt -s checkwinsize            # Update windows size on command
shopt -s histappend              # Append History instead of overwriting file
shopt -s cmdhist                 # Bash attempts to save all lines of a multiple-line command in the same history entry
shopt -s extglob                 # Extended pattern
shopt -s no_empty_cmd_completion # No empty completion
#shopt -s histappend # append to the history file, don't overwrite it
shopt -s histappend histreedit histverify
shopt -s mailwarn               # keep an eye on the mail file (access time)
shopt -s nocaseglob                 # pathname expansion will be treated as case-insensitive (auto-corrects the case)
shopt -s sourcepath

# COMPLETION {{{
complete -cf sudo
if [[ -f /etc/bash_completion ]]; then
    ./etc/bash_completion
fi
#}}}

export EDITOR="vim"

# BASH HISTORY {{{
# make multiple shells share the same history file
export HISTSIZE=1000            # bash history will save N commands
export HISTFILESIZE=${HISTSIZE} # bash will remember N commands
export HISTCONTROL=ignoreboth:erasedups   # ingore duplicates and spaces
export HISTIGNORE='&:ls:ll:la:cd:exit:clear:history:bg:fg'
export HISTTIMEFORMAT='%Y-%m-%d_%H:%M:%S_%a  '  # makes history display in YYYY-MM-DD_HH:MM:SS_3CharWeekdaySpaceSpace format
#}}}

export BLOCKSIZE=K
export VISUAL='vi'

set -b                      
set -o notify                   
set visible-stats on

# AUTOCOLOR {{{
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
#}}}

# MODIFIED COMMANDS {{{
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias ~='cd ~'
alias df='df -h'
alias diff='colordiff'              # requires colordiff package
alias du='du -c -h'
alias free='free -m'                # show sizes in MB
alias grep='grep --color=auto'
alias grep='grep --color=tty -d skip'
alias mkdir='mkdir -p -v'
alias more='less'
alias nano='nano -w'
alias ping='ping -c 5'
#}}}

# LS {{{
alias ls='ls -hF --color=auto'
alias lr='ls -R'                    # recursive ls
alias ll='ls -alh'
alias la='ll -A'
alias lm='la | less'
#}}}

# TOP 10 COMMANDS {{{
top10() { history | awk '{a[$2]++ } END{for(i in a){print a[i] " " i}}' | sort -rn | head; }
#}}}

PS1="\n\[\e[32;1m\](\`if [ \$? = 0 ]; then echo \[\e[33m\]^_^\[\e[0m\]; else echo \[\e[31m\]X_X\[\e[0m\]; fi\`\[\e[32;1m\]) - \[\e[32;1m\](\[\e[37;1m\]\u@\h\[\e[32;1m\]) - (\[\e[37;1m\]jobs:\j\[\e[32;1m\]) - (\[\e[37;1m\]\w\[\e[32;1m\]) - (\[\e[37;0m\]\!\[\e[32;1m\]) \n----> \[\e[0m\]"

LS_COLORS="$LS_COLORS:di=00;33"


