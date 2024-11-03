# colorizer:
# https://github.com/oh-my-fish/plugin-grc

# git flow completion:
# https://github.com/oh-my-fish/plugin-git-flow

# https://github.com/oh-my-fish/plugin-node-binpath
# https://github.com/oh-my-fish/plugin-brew

# fasd support here:
# https://github.com/fishgretel/fasd

# tide shell prompt
# https://github.com/IlanCosman/tide

# fisher automatic install
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

set theme_display_node yes
# set -g theme_display_nvm yes
set fish_prompt_pwd_dir_length 1
# requires `omf install bobthefish`
set theme_color_scheme gruvbox
set -g theme_nerd_fonts yes
# set -g theme_display_docker_machine yes
set -g fish_prompt_pwd_dir_length 0
set -g theme_display_jobs_verbose yes
set -g theme_show_exit_status yes
set -g theme_date_format "+%a %d-%m-%Y [%H:%M]"
# set -g fish_hybrid_key_bindings

source ~/.config/fish/.fish_variables
source ~/.config/fish/.fish_functions
source ~/.config/fish/.fish_aliases

test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish

[ -f $HOME/.config/fish/config.local.fish ]; and source $HOME/.config/fish/config.local.fish

if status --is-interactive
    atuin init fish | source

    zoxide init fish | source

    [ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

    # caniuse --completion-fish | source

    # source (npx --shell-auto-fallback fish | psub)

    # starship init fish | source

    function fish_user_key_bindings
        bind \cr _atuin_search
    end

    function tere
        set --local result (command tere $argv)
        [ -n "$result" ] && cd -- "$result"
    end

    # source (pyenv init -|psub)
end

# activate https://github.com/adambrenecki/virtualfish
# eval (python3 -m virtualfish)

# You must call it on initialization or listening to directory switching won't work
# https://github.com/nvm-sh/nvm#deeper-shell-integration
# load_nvm
