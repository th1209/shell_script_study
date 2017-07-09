#!/bin/bash

# ユーザの設定ファイル or デフォルトの設定ファイルから、定義済みの変数を呼び出すスクリプト。

# 以下のように、フルーツに関する設定ファイルがあることを前提とする。
# (環境変数$HOMEは、ユーザのホームディレクトリが格納されている。)
DEFAULT_CONFIG_PATH="/usr/local/share/.fruits"
USER_CONFIG_PATH="${HOME}/.fruits"

# 設定ファイルを読み込む(ドットコマンドを使うと、変数を外部ファイルに外出しにして管理できる)。
if [ -f $USER_CONFIG_PATH ] ; then
    . $USER_CONFIG_PATH
else
    . $DEFAULT_CONFIG_PATH
fi

# 設定ファイル内には、配列変数$FRUITSが存在すると仮定。
for fruit in ${FRUITS[@]} ; do
    echo $fruit
done
