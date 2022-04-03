# colorizer:
# https://github.com/oh-my-fish/plugin-grc
# git flow completion:
# https://github.com/oh-my-fish/plugin-git-flow

# https://github.com/oh-my-fish/plugin-node-binpath
# https://github.com/oh-my-fish/plugin-brew

# fasd support here:
# https://github.com/fishgretel/fasd

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
#     powerline-shell --shell bare $status
# end

# fisher automatic install
if not functions -q fisher
  set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
  curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
  fish -c fisher
end

[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

set theme_display_node yes
# set -g theme_display_nvm yes
set fish_prompt_pwd_dir_length 1
# requires `omf install bobthefish`
set theme_color_scheme gruvbox
# set theme_color_scheme dracula
# set theme_color_scheme dark
set -g theme_nerd_fonts yes
# set -g theme_display_docker_machine yes
set -g fish_prompt_pwd_dir_length 0
set -g theme_display_jobs_verbose yes
set -g theme_show_exit_status yes
set -g theme_date_format "+%a %d-%m-%Y [%H:%M]"
# set -g fish_hybrid_key_bindings

source ~/fish/.fish_variables
source ~/fish/.fish_functions
source ~/fish/.fish_aliases

# source (npx --shell-auto-fallback fish | psub)

# https://github.com/andsens/homeshick/wiki/Tutorials
# [ -f $HOME/.homesick/repos/homeshick/homeshick.fish ]; and source "$HOME/.homesick/repos/homeshick/homeshick.fish"

# source ~/.iterm2_shell_integration.(basename $SHELL)
source ~/.iterm2_shell_integration.fish

# thefuck --alias | source
# caniuse --completion-fish | source
# fish_logo

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
# [ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
# [ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish

[ -f $HOME/config.local.fish ]; and source $HOME/config.local.fish

# activate https://github.com/adambrenecki/virtualfish
# eval (python3 -m virtualfish)

# status --is-interactive; and source (pyenv init -|psub)

# starship init fish | source

# You must call it on initialization or listening to directory switching won't work
# https://github.com/nvm-sh/nvm#deeper-shell-integration
load_nvm
