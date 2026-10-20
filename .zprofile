###########
# General #
###########

# Completion
fpath=("${HOME}/.zsh/completion" $fpath)
autoload -Uz compinit
compinit

# Git Completion
GIT_COMPLETION_PATH="/opt/homebrew/etc/bash_completion.d/git-prompt.sh"
if [ -f "${GIT_COMPLETION_PATH}" ] && [ -r "${GIT_COMPLETION_PATH}" ]; then
  source "${GIT_COMPLETION_PATH}"
fi

# Prompt
ZSH_PROMPT_PATH="${HOME}/.zprompt"
if [ -f "${ZSH_PROMPT_PATH}" ] && [ -r "${ZSH_PROMPT_PATH}" ]; then
  source "${ZSH_PROMPT_PATH}"
fi

# Profile
PROFILE_PATH="${HOME}/.profile"
if [ -f "${PROFILE_PATH}" ] && [ -r "${PROFILE_PATH}" ]; then
  source "${PROFILE_PATH}"
fi
