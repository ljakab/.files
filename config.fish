# Disable greeting text when launching
set -g -x fish_greeting ''

# Prepend some additional directories to $PATH
set -g -x fish_user_paths $HOME/bin /usr/local/sbin /usr/sbin /sbin

# Set Maven options so ODL builds successfully
set -g -x MAVEN_OPTS "-Xmx2048m"

# Set default Map-Resolver for lig
set -g -x LISP_MAP_RESOLVER l3-london-mr-ms.rloc.lisp4.net
