#!/bin/bash

# for auto git add and commit and push

# step 1
echo -e "#----------------git status----------------"
git status
echo -e "\n"


# step 2
echo -e "#----------------git add-------------------"
git add .
echo -e "\033[32m add COMPLETE!\033[0m\n"


# step 3
echo -e "#----------------git commit----------------"
read -p "Do you want to git commit? [Y/n] " ANS1
case $ANS1 in
  [yY]|[yY][eE][sS])
    read -p "Please input the commit:" COMMIT
    git commit -m "$COMMIT"
    echo -e "\033[32m commit COMPLETE!\033[0m\n"
    ;;
  [nN]|[nN][oO])
    echo -e "Fine, I won't commit anything :( \n"
    ;;
  *)
    echo -e "Please input yes / no, idiot !\n"
    exit 1
    ;;
esac


# step 4
echo -e "#----------------git push !----------------"
read -p "Do you want to git push? [Y/n] " ANS2
case $ANS2 in
  [yY]|[yY][eE][sS])
    git push origin master
    echo -e "\033[32m push COMPLETE!\033[0m\n"
    ;;
  [nN]|[nN][oO])
    echo -e "Fine, I won't push anything :( \n"
    ;;
  *)
    echo -e "Please input yes / no, idiot !\n"
    exit 1
    ;;
esac

# step 4
echo -e "#----------------git status----------------"
git status

exit 0

