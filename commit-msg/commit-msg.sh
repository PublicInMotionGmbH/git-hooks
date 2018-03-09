#!/bin/bash

commit_regex='([A-Z]+-[0-9]+|merge)'
branch_regex='([A-Z]+-[0-9]+)'
error_msg="Aborting commit. Your commit message is missing either a JIRA Issue or 'Merge'"


BRANCH_NAME=$(git symbolic-ref --short HEAD)
BRANCH_NAME="${BRANCH_NAME##*/}"

BRANCH_IN_COMMIT=$(grep -c "\[$BRANCH_NAME\]" $1)

if [ -n "$BRANCH_NAME" ]  && [[ $BRANCH_NAME =~ ^[A-Z]+-[0-9]+$ ]] && ! [[ $BRANCH_IN_COMMIT -ge 1 ]]; then 
  sed -i.bak -e "1s/^/$BRANCH_NAME /" $1
fi

if ! grep -iqE "$commit_regex" "$1"; then
    echo "$error_msg" >&2
    exit 1
fi