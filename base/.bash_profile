###########
# General #
###########

# .bashrc
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# Alias
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

###########
# Windows #
###########

# Generate Bourne shell commands on stdout
# Start `ssh-agent` and redirect `stdout` to null
# eval $(ssh-agent -s) 1> /dev/null