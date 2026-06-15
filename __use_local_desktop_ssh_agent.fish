function __use_local_desktop_ssh_agent --description 'Point SSH_AUTH_SOCK at local desktop agent, not forwarded ssh-agent sockets'
    set -l agent_dir ~/.ssh/agent
    set -l stable_sock ~/.ssh/agent.sock

    # If the stable symlink already points to a live socket, keep using it.
    if test -S $stable_sock
        set -gx SSH_AUTH_SOCK $stable_sock
        return
    end

    # Look for locally-created agent sockets, not forwarded sshd sockets.
    for sock in $agent_dir/*.agent.*
        if test -S $sock
            ln -snf $sock $stable_sock
            set -gx SSH_AUTH_SOCK $stable_sock
            return
        end
    end
end
