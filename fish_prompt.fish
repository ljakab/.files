# Place this file into $HOME/.config/fish/functions
# initial author: Mariusz Smykula <mariuszs at gmail.com>
# some improvements by Lori Jakab

set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_hide_untrackedfiles 1

set -g __fish_git_prompt_color_branch --bold magenta
set -g __fish_git_prompt_showupstream "informative"
set -g __fish_git_prompt_char_upstream_ahead "↑"
set -g __fish_git_prompt_char_upstream_behind "↓"
set -g __fish_git_prompt_char_upstream_prefix ""

set -g __fish_git_prompt_char_stagedstate "+"
set -g __fish_git_prompt_char_dirtystate "*"
set -g __fish_git_prompt_char_untrackedfiles "…"
set -g __fish_git_prompt_char_conflictedstate "✖"
set -g __fish_git_prompt_char_cleanstate "✔"

set -g __fish_git_prompt_color_dirtystate blue
set -g __fish_git_prompt_color_stagedstate yellow
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
set -g __fish_git_prompt_color_cleanstate --bold green


function fish_prompt --description 'Write out the prompt'

	set -l last_status $status

	# Just calculate these once, to save a few cycles when displaying the prompt
	if not set -q __fish_prompt_hostname
		set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
	end

	if not set -q __fish_prompt_normal
		set -g __fish_prompt_normal (set_color normal)
	end

	if not set -q __fish_prompt_cwd
		set -g __fish_prompt_cwd (set_color $fish_color_cwd)
	end

	if not set -q __fish_prompt_status
		set -g __fish_prompt_status (set_color $fish_color_status)
	end

	if not test $last_status -eq 0
		set __fish_prompt_error (set_color $fish_color_error)
		set prompt_status "$__fish_prompt_status [$last_status]$__fish_prompt_normal"
	end

	#echo -n -s "$USER" @ "$__fish_prompt_hostname" ' ' "$__fish_prompt_cwd" (prompt_pwd) "$__fish_prompt_normal" (__fish_git_prompt) "$__fish_prompt_error" '> ' "$__fish_prompt_normal"
	echo -n -s "$USER" @ "$__fish_prompt_hostname" ' ' "$__fish_prompt_cwd" (prompt_pwd) "$__fish_prompt_normal" (__fish_git_prompt) "$prompt_status" '> '

end
