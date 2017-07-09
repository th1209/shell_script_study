#!/bin/bash

# ユーザの書き込み権限をON/OFFするコマンド。

for file in $@ ; do
    # '^-.w.*$'は、ユーザの書き込み権限を確かめる正規表現。
    if ls -la $file | grep -sq '^-.w.*$' ; then
        chmod u-w $file
    else
        chmod u+w $file
    fi
done

# 別解だが、以下の-wを使う方法で良かったはず。
# for file in $@ ; do
#     if [ -w $file ] ; then
#         chmod u-w $file
#     else
#         chmod u+w $file
#     fi
# done
