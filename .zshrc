# Alias
ALIAS_PATH="${HOME}/.config/shell/alias.sh"
if [ -f "${ALIAS_PATH}" ] && [ -r "${ALIAS_PATH}" ]; then
  source "${ALIAS_PATH}"
fi

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
