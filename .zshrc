###########
# General #
###########

# Completion
autoload -Uz compinit
compinit

# Git Completion
GIT_COMPLETION_PATH="/opt/homebrew/etc/bash_completion.d/git-prompt.sh"
if [ -f "${GIT_COMPLETION_PATH}" ]; then
    source "${GIT_COMPLETION_PATH}"
fi

# Prompt
ZSH_PROMPT_PATH="${HOME}/.zsh_prompt"
if [ -f "${ZSH_PROMPT_PATH}" ]; then
    source "${ZSH_PROMPT_PATH}"
fi

# .profile
PROFILE_PATH="${HOME}/.profile"
if [ -f "${PROFILE_PATH}" ]; then
    source "${PROFILE_PATH}"
fi
