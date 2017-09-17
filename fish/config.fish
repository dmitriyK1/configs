# colorizer:
# https://github.com/oh-my-fish/plugin-grc
# git flow completion:
# https://github.com/oh-my-fish/plugin-git-flow

# fasd support here:
# https://github.com/fishgretel/fasd

[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

# fish git prompt
# set __fish_git_prompt_showdirtystate 'yes'
# set __fish_git_prompt_showstashstate 'yes'
# set __fish_git_prompt_showupstream 'yes'
# set __fish_git_prompt_color_branch yellow

# Status Chars
# set __fish_git_prompt_char_dirtystate '⚡'
# set __fish_git_prompt_char_stagedstate '→'
# set __fish_git_prompt_char_stashstate '↩'
# set __fish_git_prompt_char_upstream_ahead '↑'
# set __fish_git_prompt_char_upstream_behind '↓'
#
# function fish_prompt
#   set last_status $status
#   set_color $fish_color_cwd
#   printf '%s' (prompt_pwd)
#   set_color normal
#   printf '%s ' (__fish_git_prompt)
#   set_color normal
# end

# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
# source ~/.iterm2_shell_integration.fish

# function fish_prompt
#   ~/Soft/powerline-shell/powerline-shell.py $status --shell bare ^/dev/null
# end

export LANG=en_US.UTF-8
export LESS='-R'
export LESSOPEN='|pygmentize -g %s'
export SHELL=/usr/local/bin/fish
export EDITOR=/usr/local/bin/vim

# requires installing omf install bobthefish
set theme_color_scheme gruvbox
set -g theme_nerd_fonts yes

source ~/.fish_aliases
source ~/.fish_variables
source ~/.fish_functions
source (npx --shell-auto-fallback fish | psub)
