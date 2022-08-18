#!/usr/bin/env bash
[[ ! ${WARDEN_DIR} ]] && >&2 echo -e "\033[31mThis script is not intended to be run directly!\033[0m" && exit 1

WARDEN_ENV_PATH="$(locateEnvPath)" || exit $?
loadEnvConfig "${WARDEN_ENV_PATH}" || exit $?

## set defaults for this command which can be overridden either using exports in the user
## profile or setting them in the .env configuration on a per-project basis
WARDEN_ENV_AMD_COMMAND=${WARDEN_ENV_AMD_COMMAND:-bash}
WARDEN_ENV_AMD_CONTAINER=${WARDEN_ENV_AMD_CONTAINER:-amd}

## allow return codes from sub-process to bubble up normally
trap '' ERR

"${WARDEN_DIR}/bin/warden" env exec "${WARDEN_ENV_AMD_CONTAINER}" \
    "${WARDEN_ENV_AMD_COMMAND}" "${WARDEN_PARAMS[@]}" "$@"
