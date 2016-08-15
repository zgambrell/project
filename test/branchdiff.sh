#!/bin/bash

var=$(git diff origin/staging origin/master 2>&1)
echo $var
if [ "$var" == "" ]
then
    echo branches are equal
else
    echo branches are not equal
fi
