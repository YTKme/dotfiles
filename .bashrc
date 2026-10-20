# Skip interactive configuration for non-interactive shell.
case $- in
  *i*) ;;
    *) return ;;
esac

# Alias
ALIAS_PATH="${HOME}/.config/shell/alias.sh"
if [ -f "${ALIAS_PATH}" ] && [ -r "${ALIAS_PATH}" ]; then
  source "${ALIAS_PATH}"
fi

# Completion Linux
if ! shopt -oq posix; then
  if [ -r /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -r /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Git Completion
GIT_COMPLETION_PATH="/opt/homebrew/etc/bash_completion.d/git-completion.bash"
if [ -f "${GIT_COMPLETION_PATH}" ] && [ -r "${GIT_COMPLETION_PATH}" ]; then
  source "${GIT_COMPLETION_PATH}"
fi

# Prompt
BASH_PROMPT_PATH="${HOME}/.bash_prompt"
if [ -f "${BASH_PROMPT_PATH}" ] && [ -r "${BASH_PROMPT_PATH}" ]; then
  source "${BASH_PROMPT_PATH}"
fi
