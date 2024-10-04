#!/bin/bash

parent_dir="submission_reminder_app" 

declare -A dir_file_map
dir_file_map=(["app"]="reminder.sh" ["modules"]="functions.sh" ["assets"]="submissions.txt" ["config"]="config.env")

mkdir -p "$parent_dir"

touch "$parent_dir/startup.sh"

for dir in "${!dir_file_map[@]}"; do
    mkdir -p "$parent_dir/$dir"
    touch "$parent_dir/$dir/${dir_file_map[$dir]}"

done

