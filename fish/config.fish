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

if not functions -q fisher
  set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
  curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
  fish -c fisher
end

[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

# requires installing omf install bobthefish
set theme_color_scheme gruvbox
# set theme_color_scheme dracula
# set theme_color_scheme dark
set -g theme_nerd_fonts yes
set -g theme_display_docker_machine yes
set -g fish_prompt_pwd_dir_length 0

source ~/fish/.fish_variables
source ~/fish/.fish_aliases
source ~/fish/.fish_functions

source (npx --shell-auto-fallback fish | psub)

# https://github.com/andsens/homeshick/wiki/Tutorials
[ -f $HOME/.homesick/repos/homeshick/homeshick.fish ]; and source "$HOME/.homesick/repos/homeshick/homeshick.fish"

source ~/.iterm2_shell_integration.(basename $SHELL)

thefuck --alias | source
caniuse --completion-fish | source
# fish_logo

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish

[ -f $HOME/fish/config.local.fish ]; and source $HOME/fish/config.local.fish
