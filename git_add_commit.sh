#!/bin/bash

# for auto git add and commit

read -p "Please input the commit:" COMMIT

echo "________________git status_______________"

git status

echo "________________git add_______________"

git add .

echo "________________git commit_______________"

git commit -m "$COMMIT"

echo "________________git status_______________"

git status

exit
