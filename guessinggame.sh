#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
  ls -1 | wc -l
}

# Main game logic
play_game() {
  local correct_count=$(count_files)
  local guess

  while true; do
    echo "How many files are in the current directory? Guess:"
    read guess

    if [[ $guess -lt $correct_count ]]; then
      echo "Your guess is too low. Try again!"
    elif [[ $guess -gt $correct_count ]]; then
      echo "Your guess is too high. Try again!"
    else
      echo "Congratulations! You guessed correctly. There are $correct_count files."
      break
    fi
  done
}

# Start the game
play_game
