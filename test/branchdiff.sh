#!/bin/bash

git diff origin/staging origin/master
if [ $? -ne 1 ]
then
    echo branches are not equal
else
    echo branches are equal
fi
