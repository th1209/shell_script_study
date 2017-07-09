#!/bin/bash

# ファイルに対しmvを行うスクリプト。

if [ $# -ne 2 ] ; then
    echo "Usage:\narg1 : file path before changed.\narg2 : file path after changed."
    exit
fi

if [ ! -e $1 ] ; then
    echo "$1 does not exist."
    exit
fi

mv $1 $2
