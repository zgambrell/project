#!/bin/bash

var=$(git diff origin/staging origin/master 2>&1)
echo $var
if [ "$var" == "" ]
then
    echo branches are equal
    sudo git checkout dev
    sudo git pull origin dev
    sudo git push origin dev
    sudo git checkout staging
    sudo git pull origin staging
    sudo git merge dev
    sudo git push origin staging
else
    echo branches are not equal
fi
