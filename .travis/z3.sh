#!/bin/bash -x

# Make sure we exit if there is a failure
set -e

# FIXME: Move this into its own script
source ${KLEE_SRC}/.travis/sanitizer_flags.sh
if [ "X${IS_SANITIZED_BUILD}" != "X0" ]; then
  echo "Error: Requested Sanitized build but Z3 being used is not sanitized"
  exit 1
fi

# Should we install libz3-dbg too?
sudo apt-get -y install libz3 libz3-dev
