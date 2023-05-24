###########
# General #
###########

# .bashrc
BASHRC_PATH='~/.bashrc'
if [ -f "$BASHRC_PATH" ]; then
    source "$BASHRC_PATH"
fi

# Alias
BASH_ALIASES_PATH='~/.bash_aliases'
if [ -f "$BASH_ALIASES_PATH" ]; then
    source "$BASH_ALIASES_PATH"
fi

###########
# Windows #
###########

# Generate Bourne shell commands on stdout
# Start `ssh-agent` and redirect `stdout` to null
# eval $(ssh-agent -s) 1> /dev/null