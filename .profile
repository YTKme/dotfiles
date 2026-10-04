###########
# General #
###########

# History
HISTSIZE=50000
SAVEHIST=50000

# Alias
ALIASES_PATH="${HOME}/.aliases"
if [ -f "${ALIASES_PATH}" ]; then
    source "${ALIASES_PATH}"
fi
