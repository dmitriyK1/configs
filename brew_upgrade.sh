#!/usr/bin/env fish

begin
    brew update
    brew upgrade --greedy
    brew upgrade --cask --greedy
    brew cleanup
    brew tap --repair
end | tee brew.log
