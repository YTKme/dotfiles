# BASH
if [ -n "$BASH_VERSION" ]; then
  # Load .bashrc
  if [ -f "${HOME}/.bashrc" ] && [ -r "${HOME}/.bashrc" ]; then
    source "${HOME}/.bashrc"
  fi
fi
