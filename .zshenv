# Where user-specific configurations should be written (analogous to `/etc`).
# Should default to `$HOME/.config`.
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

# Environment
ENVIRONMENT_PATH="${HOME}/.config/shell/env.sh"
if [ -f "${ENVIRONMENT_PATH}" ] && [ -r "${ENVIRONMENT_PATH}" ]; then
  source "${ENVIRONMENT_PATH}"
fi

# Path
PATH_PATH="${HOME}/.config/shell/path.sh"
if [ -f "${PATH_PATH}" ] && [ -r "${PATH_PATH}" ]; then
  source "${PATH_PATH}"
fi

# History
HISTFILE="${HOME}/.zsh_history"
