#!/bin/bash

echo "Starting Vowel Frequency Analyzer..."

FREQ_RESULT=$(python3 /github/workspace/.github/scripts/frequency.py "/github/workspace/${FILE}")

bash /github/workspace/.github/scripts/update_readme.sh "$FREQ_RESULT" "$GITHUB_USER"

echo "Process Completed!"
