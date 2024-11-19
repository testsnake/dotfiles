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

# pnpm
set -gx PNPM_HOME "/home/emmamb/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
