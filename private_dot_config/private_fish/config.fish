if status is-interactive
    # Theme
    fish_config theme choose "Catppuccin Mocha"

    # Disable greeting
    set -g fish_greeting

    # Set editor to Visual Studio Code
    if set -q TERM_PROGRAM && test $TERM_PROGRAM = vscode
        set -gx EDITOR code --wait
    else
        set -gx EDITOR code --wait --new-window
    end

    thefuck --alias | source
end


