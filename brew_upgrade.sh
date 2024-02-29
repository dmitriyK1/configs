#!/usr/bin/env fish

function colorize_text
    echo ""
    echo -e "\e[1;32m$argv\e[0m"
end

begin
    sudo --validate
    colorize_text ">>> brew update"
    brew update
    colorize_text ">>> brew upgrade --greedy"
    brew upgrade --greedy
    colorize_text ">>> brew upgrade --cask --greedy"
    brew upgrade --cask --greedy
    colorize_text ">>> brew cleanup"
    brew cleanup
    colorize_text ">>> brew tap --repair"
    brew tap --repair
end | tee brew.log
