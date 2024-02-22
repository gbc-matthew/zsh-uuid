#!/bin/zsh
# Usage: zsh set_zsh_UUID.sh
# Check if UUID environment variable already exists
if [ -n "$UUID" ]; then
  echo "UUID environment variable already exists: $UUID"
  exit 0
fi

# Generate a new UUID
UUID=$(uuidgen)

# Add the UUID to the zsh configuration file
echo "export UUID=$UUID" >> ~/.zshrc

# Reload the zsh configuration file
source ~/.zshrc

# Print a message indicating that the UUID has been created
echo "UUID environment variable created: $UUID"

# Restart Terminal Emulator
