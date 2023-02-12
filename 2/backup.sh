#!/bin/bash
# Author okarin
# バックアップするファイルと場所を入力するよう促すスクリプト
read -p "Which file types do you want to backup " file_suffix
read -p "Which directory do you want to backup to " dir_name

# 指定されたディレクトリが無かったら作成します
test -d $HOME/$dir_name || mkdir -m 700 $HOME/$dir_name

find $HOME/script_learn -path $HOME/$dir_name -prune -o \
 -name "*$file_suffix" -exec cp {} $HOME/$dir_name/ \;
exit 0
