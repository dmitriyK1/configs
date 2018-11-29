#!/usr/bin/env fish

for package in (npm -g outdated --parseable --depth=0 | cut -d: -f2)
  npm -g install "$package"
end
