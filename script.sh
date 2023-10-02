#!/bin/bash
FILES_CHANGED=$(git diff --name-only --diff-filter=ACMRT 04e8044383ecacceffe32a465e46578d323de8d2 533244f171c590aaef5176108c13e71ae1ce90cb | xargs)
PACKAGEJSON=package.json
PACKAGELOCK=package-lock.json
if [[ "$FILES_CHANGED" == *"$PACKAGELOCK"* ]]; then
  echo "EH SIM"
fi
echo $FILES_CHANGED

# [[ "$FILES_CHANGED" == *"$PACKAGEJSON"* ]] ||

# to get the sha of the commit
#git rev-parse feat-test(branch name)
