#!/bin/bash

# Runs command in fish
execute_fish_command() {
    if ! fish -c "$1"; then
        echo "Failed to execute: $1"
        exit 1
    fi
}

#C Checks fish is installed
if ! command -v fish >/dev/null 2>&1; then
    echo "Fish shell is not installed"
    exit 1
fi

echo "Changing fish variables"

# Disable greeting (universal setting)
execute_fish_command "set -U fish_greeting ''"

# Edit tide config
execute_fish_command "tide configure --auto --style=Rainbow --prompt_colors='True color' --show_time=No --rainbow_prompt_separators=Slanted --powerline_prompt_heads=Sharp --powerline_prompt_tails=Flat --powerline_prompt_style='Two lines, character' --prompt_connection=Dotted --powerline_right_prompt_frame=No --prompt_connection_andor_frame_color=Light --prompt_spacing=Sparse --icons='Many icons' --transient=Yes > /dev/null"