#!/bin/sh



# Fish?
if command -v fish >/dev/null 2>&1; then
  # Fisher?
  if fish -c "type fisher" >/dev/null 2>&1; then
    fish ~/.config/sync.fish && echo "-- Sync Complete --" || echo "-- Error when syncing --"
  else
    # No fisher
    echo "Error: Fisher is not installed. https://github.com/jorgebucaran/fisher" >&2
    exit 1
  fi
else
  # No fish
  echo "Error: Fish shell is not installed. https://github.com/fish-shell/fish-shell" >&2
  exit 1
fi