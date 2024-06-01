#!/bin/bash

set -x

# Define the script to be executed
file_to_watch="$1"

# Ensure the script to run is provided as a parameter
if [ -z "$file_to_watch" ]; then
	echo "Please provide the script to run as a parameter."
	exit 1
fi

# Function to execute the script
run_script() {
	echo "Running the script..."
	bash "$file_to_watch"
}

# Initial execution of the script
run_script

# Monitor the file for changes
while inotifywait -e modify "$file_to_watch"; do
	echo "File '$file_to_watch' modified. Re-running the script..."
	run_script
done
