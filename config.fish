# Disable greeting text when launching
set -g -x fish_greeting ''

# Prepend some additional directories to $PATH
set -g -x fish_user_paths $HOME/bin $HOME/node_modules/.bin /usr/local/sbin /usr/sbin /sbin

# Set language
set -g -x LANG en_US.UTF-8

# Source $HOME/.fishrc if it exists and we're interactive
if status --is-interactive;
    cd $HOME
    [ -e $HOME/.fishrc ]; and source $HOME/.fishrc
end
