###########
# General #
###########

# Profile
PROFILE_PATH="${HOME}/.zprofile"
if [ -f "${PROFILE_PATH}" ] && [ -r "${PROFILE_PATH}" ]; then
  source "${PROFILE_PATH}"
fi
