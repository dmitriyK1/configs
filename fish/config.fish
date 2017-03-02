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

function fish_prompt
  ~/Soft/powerline-shell/powerline-shell.py $status --shell bare ^/dev/null
end

# To just rerun your last command, simply type '!!'
# '!! sudo' will prepend sudo to your most recent command
# Running !! with anything other than sudo will append the argument to your most recent command
# To add another command to prepend list remove the # on line 10 and put the command in the quotes. Repeat as needed
function !!;
  set var (history | head -n 1)
  if test $argv
    if test $argv = "sudo"        #; or "any other command you want to prepend"
        eval $argv $var
    else
        eval $var $argv
    end
    else
        eval $var
  end
end

source ~/.fish_aliases
source ~/.fish_variables
