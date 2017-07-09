#!/bin/bash

# qが入力されるまで、ファイルの内容を出力し続けるコマンド。

set -e

while :
do
    /bin/echo -n "Input file path or enter 'q' : "
    read input
    if [ $input = 'q' ] ; then
        break
    else
        cat $input
    fi
done
