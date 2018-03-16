#!/bin/bash

git stash -q --keep-index

./gradlew detektCheck checkstyle checkstyleMain checkstyleTest -q --daemon

RESULT=$?

git stash pop -q

exit $RESULT