# Environment
ENVIRONMENT_PATH="${HOME}/.config/shell/env.sh"
if [ -f "${ENVIRONMENT_PATH}" ] && [ -r "${ENVIRONMENT_PATH}" ]; then
  source "${ENVIRONMENT_PATH}"
fi

# History
HISTFILE="${HOME}/.zsh_history"
setopt HIST_IGNORE_DUPS HIST_IGNORE_SPACE

# Keep only the first occurrence of each duplicated value for PATH
typeset -U PATH path

# Alias
ALIAS_PATH="${HOME}/.config/shell/alias.sh"
if [ -f "${ALIAS_PATH}" ] && [ -r "${ALIAS_PATH}" ]; then
  source "${ALIAS_PATH}"
fi

# Completion
fpath=("${HOME}/.zsh/completion" $fpath)
autoload -Uz compinit
compinit
zstyle ':completion:*' rehash true

# Git Prompt
GIT_PROMPT_PATH="/opt/homebrew/etc/bash_completion.d/git-prompt.sh"
if [ -f "${GIT_PROMPT_PATH}" ] && [ -r "${GIT_PROMPT_PATH}" ]; then
  source "${GIT_PROMPT_PATH}"
fi

# Prompt
ZSH_PROMPT_PATH="${HOME}/.zprompt"
if [ -f "${ZSH_PROMPT_PATH}" ] && [ -r "${ZSH_PROMPT_PATH}" ]; then
  source "${ZSH_PROMPT_PATH}"
fi

# Local Binary Environment
LOCAL_BINARY_ENVIRONMENT_PATH="${HOME}/.local/bin/env"
if [ -f "${LOCAL_BINARY_ENVIRONMENT_PATH}" ] && [ -r "${LOCAL_BINARY_ENVIRONMENT_PATH}" ]; then
  . "${LOCAL_BINARY_ENVIRONMENT_PATH}"
fi

# Local Binary Environment
# . "$HOME/.local/bin/env"

# uv Completion
# eval "$(uv generate-shell-completion zsh)"
# eval "$(uvx --generate-shell-completion zsh)"
