#!/bin/bash
echo $(i3-msg -t get_workspaces | jq '.[] | select(.focused==true) | .output')
