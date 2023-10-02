#!/bin/bash
FILES_CHANGED=$(git diff --name-only --diff-filter=ACMRT 04e8044383ecacceffe32a465e46578d323de8d2 00cfbec778b798cd4c577a55279404d658a2427f | xargs)
PACKAGEJSON=package.json
PACKAGELOCK=package-lock.json
if [[ "$FILES_CHANGED" == *"$PACKAGELOCK"* ]]; then
  echo "EH SIM"
fi
echo $FILES_CHANGED

# [[ "$FILES_CHANGED" == *"$PACKAGEJSON"* ]] ||