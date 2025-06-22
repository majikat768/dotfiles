# .bashrc
if [[ $- == *i* ]]; then
	clear
	fastfetch #| lolcat
	echo -e '\n'
	fortune | lolcat
	echo -e "\nWelcome, $USER \n" | lolcat
fi

# Function to show git branch.
git_branch() {
	branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
	[ -n "$branch" ] && echo " ($branch)"
}

# Set the actual prompt
set_bash_prompt() {
	local user_color="\[\e[0;37m\]"
	local host_color="\[\e[0;38;5;197m\]"
	local path_color="\[\e[0;36m\]"
	local branch_color="\[\e[0;37m\]"
	local prompt_color="\[\e[0;38;5;172m\]"
	local reset="\[\e[0m\]"

	PS1="${user_color}\u${host_color}@\h ${path_color}\w${branch_color}$(git_branch)\n${prompt_color}\$ ${reset}"
}

PROMPT_COMMAND=set_bash_prompt


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
	PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

#android stuff
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:/opt/android-studio/bin
export PATH=$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools

export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi
unset rc
