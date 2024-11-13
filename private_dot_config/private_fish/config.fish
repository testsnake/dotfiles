if status is-interactive
    # Theme
    fish_config theme choose "Catppuccin Mocha"

    # Set editor to Visual Studio Code
    if set -q TERM_PROGRAM && test $TERM_PROGRAM = vscode
        set -gx EDITOR code --wait
    else
        set -gx EDITOR code --wait --new-window
    end

    # Enable thefuck
    thefuck --alias | source
end
