#!/usr/bin/env fish

begin
    sudo --validate
    echo ""
    echo ">>> brew update"
    brew update
    echo ""
    echo ">>> brew upgate --greedy"
    brew upgrade --greedy
    echo ""
    echo ">>> brew upgrade --cask --greedy"
    brew upgrade --cask --greedy
    echo ""
    echo ">>> brew cleanup"
    brew cleanup
    echo ""
    echo ">>> brew tap --repair"
    brew tap --repair
end | tee brew.log
