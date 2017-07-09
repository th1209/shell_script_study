#!bin/bash

if [ -e "$1" ] ; then
    echo "$1 already exists."
else
    mkdir -p $1
    echo "Create $1."
fi
