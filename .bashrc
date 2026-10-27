# Skip interactive configuration for non-interactive shell.
case $- in
  *i*) ;;
    *) return ;;
esac

# History
HISTCONTROL=ignoreboth
# Enable (set) `histappend`, the history list is appended to the file
# named by the value of the HISTFILE variable when the shell exits,
# rather than overwriting the file.
shopt -s histappend

# Environment
ENVIRONMENT_PATH="${HOME}/.config/shell/env.sh"
if [ -f "${ENVIRONMENT_PATH}" ] && [ -r "${ENVIRONMENT_PATH}" ]; then
  source "${ENVIRONMENT_PATH}"
fi

# Alias
ALIAS_PATH="${HOME}/.config/shell/alias.sh"
if [ -f "${ALIAS_PATH}" ] && [ -r "${ALIAS_PATH}" ]; then
  source "${ALIAS_PATH}"
fi

# Path
PATH_PATH="${HOME}/.config/shell/path.sh"
if [ -f "${PATH_PATH}" ] && [ -r "${PATH_PATH}" ]; then
  source "${PATH_PATH}"
fi

# Completion Linux
# if ! shopt -oq posix; then
#   if [ -r /usr/share/bash-completion/bash_completion ]; then
#     . /usr/share/bash-completion/bash_completion
#   elif [ -r /etc/bash_completion ]; then
#     . /etc/bash_completion
#   fi
# fi

# Completion *nix
# if ! shopt -oq posix; then
#   # Homebrew
#   if [ -r /opt/homebrew/etc/profile.d/bash_completion.sh ]; then
#     . /opt/homebrew/etc/profile.d/bash_completion.sh
#   elif [ -r /usr/share/bash-completion/bash_completion ]; then
#     . /usr/share/bash-completion/bash_completion
#   elif [ -r /etc/bash_completion ]; then
#     . /etc/bash_completion
#   fi
# fi

# BASH Completion 2

# Git Completion
GIT_COMPLETION_PATH="/opt/homebrew/etc/bash_completion.d/git-completion.bash"
if ! complete -p git >/dev/null 2>&1 && [ -f "${GIT_COMPLETION_PATH}" ] && [ -r "${GIT_COMPLETION_PATH}" ]; then
  source "${GIT_COMPLETION_PATH}"
fi

# Git Prompt
GIT_PROMPT_PATH="/opt/homebrew/etc/bash_completion.d/git-prompt.sh"
if ! declare -F __git_ps1 >/dev/null && [ -f "${GIT_PROMPT_PATH}" ] && [ -r "${GIT_PROMPT_PATH}" ]; then
  source "${GIT_PROMPT_PATH}"
fi

# Prompt
PROMPT_PATH="${HOME}/.bash_prompt"
if [ -f "${PROMPT_PATH}" ] && [ -r "${PROMPT_PATH}" ]; then
  source "${PROMPT_PATH}"
fi

# Local Binary Environment
LOCAL_BINARY_ENVIRONMENT_PATH="${HOME}/.local/bin/env"
if [ -f "${LOCAL_BINARY_ENVIRONMENT_PATH}" ] && [ -r "${LOCAL_BINARY_ENVIRONMENT_PATH}" ]; then
  . "${LOCAL_BINARY_ENVIRONMENT_PATH}"
fi

# Local Binary Environment
# . "$HOME/.local/bin/env"

# Local Completion
# LOCAL_COMPLETION_PATH="${HOME}/.local/share/bash-completion/completions"
# if [[ -d "$LOCAL_COMPLETION_PATH" ]]; then
#   for completion_file in "$LOCAL_COMPLETION_PATH"/*.bash; do
#     [[ -f "$completion_file" ]] && [[ -r "$completion_file" ]] && source "$completion_file"
#   done
# fi
