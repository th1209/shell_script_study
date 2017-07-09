#!bin/bash

# ユーザの入力が'y'か'yes'で無いなら早期exit。
# (/bin/echoとしているのは、Macのシェルスクリプトにおいて、-nオプションを有効にするため)
/bin/echo -n 'Do you want to create a file ? Enter(y/n)'
read answer
if [ $answer != 'y' -a $answer != 'yes' ] ; then
    exit
fi

# ファイル名を受け取って、新規作成。
/bin/echo -n 'Input file name : '
read file_name
touch $file_name
