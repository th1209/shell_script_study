#!/bin/bash

# 引数で指定したファイルの拡張子を、まとめて.txtに置換するスクリプト。i
# 第一引数 : 拡張子
# 第二引数以降 : 拡張子を変えたいファイル

# 引数チェック
if [ $# -lt 2 ] ; then
    exit
fi

# コマンド引数を、拡張子とファイルに分ける。
ext=$1
files=${@:2}

for from in $files ; do
    # sedで拡張子を切り落とす -> sedで拡張子付与 -> mv。
    to=`echo $from | sed 's/\..*$//'`
    to=`echo $to | sed "s/$/.$ext/"`
	mv $from $to
done

