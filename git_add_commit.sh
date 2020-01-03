#!/bin/bash

# for auto git add and commit

read -p "Please input the commit:" COMMIT

git status

git add .

git commit -m "$COMMIT"

exit
