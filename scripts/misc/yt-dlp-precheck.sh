#!/bin/bash

latest=$(curl -s https://api.github.com/repos/yt-dlp/yt-dlp/releases/latest | jq '.["tag_name"]')
current=$(yt-dlp --version)
latest=${latest:1:$((${#latest} - 2))}

if [[ "$current" == "$latest" ]]; then
    exit 0
fi

echo "$current is not up to date with latest $latest"
echo "Upgrading..."
pipx install yt-dlp --force

