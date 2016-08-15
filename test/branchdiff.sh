#!/bin/bash

git diff origin/staging origin/master
if [ $? -ne 0 ]
then
    echo branches are equal
else
    echo branches are not equal
fi
