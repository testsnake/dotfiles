echo "Running sync script on $CHEZMOI_OS"

fisher update > /dev/null
fish ~/.config/fish/configure_tide.sh