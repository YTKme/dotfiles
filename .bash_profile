###########
# General #
###########

# Completion Linux
if ! shopt -oq posix; then
  if [ -r /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -r /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Prompt
BASH_PROMPT_PATH="${HOME}/.bash_prompt"
if [ -f "${BASH_PROMPT_PATH}" ] && [ -r "${BASH_PROMPT_PATH}" ]; then
  source "${BASH_PROMPT_PATH}"
fi

# Profile
PROFILE_PATH="${HOME}/.profile"
if [ -f "${PROFILE_PATH}" ] && [ -r "${PROFILE_PATH}" ]; then
  source "${PROFILE_PATH}"
fi

# Check if `ssh-agent` process already running, remove them
# Generate Bourne shell commands on stdout
# Start `ssh-agent` and redirect `stdout` to null

# if [ -z "${SSH_AUTH_SOCK}" ] ; then
#     eval "$(ssh-agent -s)" > /dev/null
#     #eval `keychain --eval --quick --quiet id_rsa id_ed25519`
#     #eval "$(ssh-agent -s)" 1> /dev/null
# fi

###########
# Windows #
###########

# SSH_AGENT_COMMAND="ssh-agent"
# if [ -z "$(pgrep ssh-agent)" ]; then
#     rm -rf /tmp/ssh-*
#     eval $(ssh-agent -s) > /dev/null
#     #eval $(ssh-agent -s) 1> /dev/null
# else
#     export SSH_AGENT_PID=$(pgrep ssh-agent)
#     export SSH_AUTH_SOCK=$(find /tmp/ssh-* -name agent.*)
# fi
#
# Example For `~/.keychain/$HOSTNAME-sh`
# SSH_AUTH_SOCK=/tmp/ssh-XXXXXXzQWJUO/agent.###; export SSH_AUTH_SOCK;
# SSH_AGENT_PID=###; export SSH_AGENT_PID;
