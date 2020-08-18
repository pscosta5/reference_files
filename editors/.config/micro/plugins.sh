#!/usr/bin/env bash
# Install plugins in micro
for plugin in 'fzf' 'aspell' 'manipulator' 'filemanager' 'fmt'; do
    micro -plugin install $plugin
done
