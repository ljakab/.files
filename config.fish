# Disable greeting text when launching
set -g -x fish_greeting ''

# Set language
set -g -x LANG en_US.UTF-8

# Source $HOME/.fishrc if it exists and we're interactive
if status is-interactive
    [ -e $HOME/.fishrc ]; and source $HOME/.fishrc
end
