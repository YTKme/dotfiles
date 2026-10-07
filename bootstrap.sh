#!/bin/sh

set -u

# Get the absolute path of the current script.
CURRENT_DIRECTORY="$(cd "$(dirname "$0")" && pwd)"

HOME_FILE_LIST="
.bash_profile
.bashrc
.zshenv
.zprofile
.zshrc
"

symbolic_link() {
  source=$1
  target=$2

  # DO NOT overwrite an existing file, directory, or symbolic link.
  if [ -e "${target}" ] || [ -L "${target}" ]; then
    printf 'Skip: %s Already Exist\n' "${target}"
    return
  fi

  ln -s "${source}" "${target}"
  printf 'Link: %s -> %s\n' "${target}" "${source}"
}

printf 'Bootstrap dotfiles From %s\n\n' "$CURRENT_DIRECTORY"

# Create ~/.config Directory
if [ ! -d "${HOME}/.config" ]; then
  mkdir -p "${HOME}/.config"
  printf 'Make Directory: %s\n' "${HOME}/.config"
fi

# Configuration
symbolic_link \
    "${CURRENT_DIRECTORY}/.config/shell" \
    "${HOME}/.config/shell"

# Home File
for file in $HOME_FILE_LIST; do
    source="${CURRENT_DIRECTORY}/$file"
    target="${HOME}/$file"

    # Ensure the source file exist in the dotfiles repository.
    if [ ! -e "${source}" ]; then
        printf 'Skip: %s Does Not Exist\n' "${source}"
        continue
    fi

    symbolic_link "${source}" "${target}"
done

printf '\nDone!\n'
