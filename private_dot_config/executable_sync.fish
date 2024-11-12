#!/bin/fish

echo "Running sync script on $CHEZMOI_OS"


# fish / fisher
echo "Updating fisher plugins"
fisher update 2>&1 >/dev/null

echo "Configuring tide"
fish ~/.config/fish/configure_tide.sh
  